.class public final Lcom/jichi/ob/api/KomootApi;
.super Ljava/lang/Object;
.source "KomootApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/KomootApi$Companion;,
        Lcom/jichi/ob/api/KomootApi$LoginResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 /2\u00020\u0001:\u0002/0B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007J \u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u000fJ \u0010\u0013\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0015J4\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007H\u0002J\u000e\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0018J&\u0010!\u001a\u00020\"2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010$JJ\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00070&2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u00182\u0006\u0010(\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010)J\u0018\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\u0007H\u0002J\u0010\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/jichi/ob/api/KomootApi;",
        "",
        "<init>",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "lastEmail",
        "",
        "lastPassword",
        "restoreCredentials",
        "",
        "email",
        "password",
        "login",
        "Lcom/jichi/ob/api/KomootApi$LoginResult;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "validateToken",
        "",
        "token",
        "getUsername",
        "reLoginIfNeeded",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getActivities",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "skip",
        "",
        "limit",
        "(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sportToChinese",
        "sport",
        "mapToKomootSport",
        "record",
        "downloadGpx",
        "",
        "tourId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "upload",
        "Lkotlin/Pair;",
        "data",
        "isFit",
        "(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "basicAuth",
        "user",
        "pass",
        "formatTime",
        "iso",
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
.field private static final API:Ljava/lang/String; = "https://api.komoot.de"

.field private static final APP_UA:Ljava/lang/String; = "jichiOb/7.9.6 (\u9e21\u7fc5\u5e78\u54f2\u8fc8\u8fdbOB)"

.field public static final Companion:Lcom/jichi/ob/api/KomootApi$Companion;

.field private static final FORM_MEDIA:Ljava/lang/String; = "application/x-www-form-urlencoded;charset=utf-8"

.field private static final LIST_TOURS:Ljava/lang/String; = "https://api.komoot.de/v007/users"

.field private static final LOGIN_URL:Ljava/lang/String; = "https://api.komoot.de/v006/account/email"

.field private static final TAG:Ljava/lang/String; = "KomootApi"

.field private static final TOUR_URL:Ljava/lang/String; = "https://api.komoot.de/v007/tours"

.field private static final UA:Ljava/lang/String; = "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0"

.field private static final UPLOAD_URL:Ljava/lang/String; = "https://api.komoot.de/v007/tours"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private lastEmail:Ljava/lang/String;

.field private lastPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/api/KomootApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/api/KomootApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/api/KomootApi;->Companion:Lcom/jichi/ob/api/KomootApi$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    .line 53
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 55
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/api/KomootApi;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$basicAuth(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/api/KomootApi;->basicAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$formatTime(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KomootApi;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClient$p(Lcom/jichi/ob/api/KomootApi;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jichi/ob/api/KomootApi;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getLastEmail$p(Lcom/jichi/ob/api/KomootApi;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jichi/ob/api/KomootApi;->lastEmail:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastPassword$p(Lcom/jichi/ob/api/KomootApi;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/jichi/ob/api/KomootApi;->lastPassword:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setLastEmail$p(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jichi/ob/api/KomootApi;->lastEmail:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastPassword$p(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jichi/ob/api/KomootApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$sportToChinese(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/jichi/ob/api/KomootApi;->sportToChinese(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final basicAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 301
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Basic "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final formatTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 305
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 308
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 310
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 311
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p1
.end method

.method private final sportToChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "skialpin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 202
    :cond_0
    const-string/jumbo p1, "\u9ad8\u5c71\u6ed1\u96ea"

    return-object p1

    .line 188
    :sswitch_1
    const-string v0, "downhillbike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 195
    :cond_1
    const-string/jumbo p1, "\u901f\u964d"

    return-object p1

    .line 188
    :sswitch_2
    const-string v0, "e_racebike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "e_mtb_easy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "touringbicycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "climbing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 208
    :cond_2
    const-string/jumbo p1, "\u6500\u5ca9"

    return-object p1

    .line 188
    :sswitch_6
    const-string/jumbo v0, "snowshoe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 205
    :cond_3
    const-string/jumbo p1, "\u96ea\u978b\u5f92\u6b65"

    return-object p1

    .line 188
    :sswitch_7
    const-string v0, "mtb_advanced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "trail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 197
    :cond_4
    const-string/jumbo p1, "\u8d8a\u91ce\u8dd1"

    return-object p1

    .line 188
    :sswitch_9
    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 210
    :cond_5
    const-string/jumbo p1, "\u5176\u4ed6"

    return-object p1

    .line 188
    :sswitch_a
    const-string v0, "e_mtb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "sled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 206
    :cond_6
    const-string/jumbo p1, "\u96ea\u6a47"

    return-object p1

    .line 188
    :sswitch_c
    const-string v0, "hike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 198
    :cond_7
    const-string/jumbo p1, "\u5f92\u6b65"

    return-object p1

    .line 188
    :sswitch_d
    const-string v0, "mtb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 191
    :cond_8
    const-string/jumbo p1, "\u5c71\u5730\u9a91\u884c"

    return-object p1

    .line 188
    :sswitch_e
    const-string/jumbo v0, "snowboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 204
    :cond_9
    const-string/jumbo p1, "\u5355\u677f\u6ed1\u96ea"

    return-object p1

    .line 188
    :sswitch_f
    const-string v0, "mountaineering"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 199
    :cond_a
    const-string/jumbo p1, "\u767b\u5c71"

    return-object p1

    .line 188
    :sswitch_10
    const-string v0, "racebike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 189
    :cond_b
    const-string/jumbo p1, "\u516c\u8def\u9a91\u884c"

    return-object p1

    .line 188
    :sswitch_11
    const-string/jumbo v0, "unicycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 209
    :cond_c
    const-string/jumbo p1, "\u72ec\u8f6e\u8f66"

    return-object p1

    .line 188
    :sswitch_12
    const-string v0, "mtb_easy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 192
    :cond_d
    const-string/jumbo p1, "\u8d8a\u91ce\u9a91\u884c"

    return-object p1

    .line 188
    :sswitch_13
    const-string v0, "nordicwalking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    .line 201
    :cond_e
    const-string/jumbo p1, "\u5317\u6b27\u5f92\u6b65"

    return-object p1

    .line 188
    :sswitch_14
    const-string/jumbo v0, "skaten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    .line 207
    :cond_f
    const-string/jumbo p1, "\u8f6e\u6ed1"

    return-object p1

    .line 188
    :sswitch_15
    const-string v0, "nordic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    .line 200
    :cond_10
    const-string/jumbo p1, "\u8d8a\u91ce\u6ed1\u96ea"

    return-object p1

    .line 188
    :sswitch_16
    const-string v0, "e_mtb_advanced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    .line 193
    :cond_11
    const-string/jumbo p1, "\u8010\u529b\u9a91\u884c"

    return-object p1

    .line 188
    :sswitch_17
    const-string v0, "citybike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    .line 194
    :cond_12
    const-string/jumbo p1, "\u57ce\u5e02\u9a91\u884c"

    return-object p1

    .line 188
    :sswitch_18
    const-string v0, "jogging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    .line 196
    :cond_13
    const-string/jumbo p1, "\u8dd1\u6b65"

    return-object p1

    .line 188
    :sswitch_19
    const-string v0, "e_touringbicycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    .line 190
    :cond_14
    const-string/jumbo p1, "\u65c5\u884c\u9a91\u884c"

    return-object p1

    .line 188
    :sswitch_1a
    const-string/jumbo v0, "skitour"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    .line 203
    :cond_15
    const-string/jumbo p1, "\u6ed1\u96ea\u65c5\u884c"

    return-object p1

    .line 211
    :goto_0
    const-string/jumbo p1, "\u8fd0\u52a8"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffec917 -> :sswitch_1a
        -0x679465b1 -> :sswitch_19
        -0x5565ab23 -> :sswitch_18
        -0x54b3f034 -> :sswitch_17
        -0x43f1ba20 -> :sswitch_16
        -0x3df963f3 -> :sswitch_15
        -0x35b1058c -> :sswitch_14
        -0x344f0f34 -> :sswitch_13
        -0x202801da -> :sswitch_12
        -0x1250960a -> :sswitch_11
        -0x3d061ce -> :sswitch_10
        -0x3af9c63 -> :sswitch_f
        -0x20388bd -> :sswitch_e
        0x1a79b -> :sswitch_d
        0x30de1b -> :sswitch_c
        0x35e8b8 -> :sswitch_b
        0x5bc1cc1 -> :sswitch_a
        0x6527f10 -> :sswitch_9
        0x697f206 -> :sswitch_8
        0x1cee5046 -> :sswitch_7
        0x294152ee -> :sswitch_6
        0x3690590d -> :sswitch_5
        0x4172a335 -> :sswitch_4
        0x4636d0c0 -> :sswitch_3
        0x628e70cc -> :sswitch_2
        0x786d5c44 -> :sswitch_1
        0x7f187719 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final downloadGpx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$downloadGpx$2;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/jichi/ob/api/KomootApi$downloadGpx$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getActivities(Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 138
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$getActivities$2;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/KomootApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getUsername(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$getUsername$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/KomootApi$getUsername$2;-><init>(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/jichi/ob/api/KomootApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$login$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/jichi/ob/api/KomootApi$login$2;-><init>(Lcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final mapToKomootSport(Lcom/jichi/ob/model/ActivityRecord;)Ljava/lang/String;
    .locals 6

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u9a91"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "racebike"

    return-object p1

    .line 217
    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u8dd1"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "jogging"

    return-object p1

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u5f92\u6b65"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "hike"

    return-object p1

    .line 219
    :cond_2
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u8d8a\u91ce"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "mtb_easy"

    return-object p1

    .line 220
    :cond_3
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u6e38\u6cf3"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-string v1, "other"

    if-eqz v0, :cond_4

    return-object v1

    .line 221
    :cond_4
    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v5, "\u5065\u8d70"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const-string/jumbo v0, "\u5feb\u8d70"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    :goto_0
    const-string p1, "nordicwalking"

    return-object p1
.end method

.method public final reLoginIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/KomootApi$LoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 127
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$reLoginIfNeeded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/jichi/ob/api/KomootApi$reLoginIfNeeded$2;-><init>(Lcom/jichi/ob/api/KomootApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final restoreCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/jichi/ob/api/KomootApi;->lastEmail:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/jichi/ob/api/KomootApi;->lastPassword:Ljava/lang/String;

    return-void
.end method

.method public final upload(Ljava/lang/String;Ljava/lang/String;[BLcom/jichi/ob/model/ActivityRecord;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Lcom/jichi/ob/model/ActivityRecord;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 260
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$upload$2;

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v5, p3

    move-object v3, p4

    move v2, p5

    move-object/from16 v4, p6

    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/api/KomootApi$upload$2;-><init>(ZLcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;[BLcom/jichi/ob/api/KomootApi;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, p7

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final validateToken(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 103
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/KomootApi$validateToken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/jichi/ob/api/KomootApi$validateToken$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/api/KomootApi;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
