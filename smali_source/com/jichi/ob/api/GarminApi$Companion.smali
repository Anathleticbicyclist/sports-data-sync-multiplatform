.class public final Lcom/jichi/ob/api/GarminApi$Companion;
.super Ljava/lang/Object;
.source "GarminApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/GarminApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGarminApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1768:1\n13472#2,2:1769\n13472#2,2:1771\n12434#2,2:1778\n774#3:1773\n865#3,2:1774\n1869#3,2:1776\n1#4:1780\n*S KotlinDebug\n*F\n+ 1 GarminApi.kt\ncom/jichi/ob/api/GarminApi$Companion\n*L\n155#1:1769,2\n156#1:1771,2\n179#1:1778,2\n168#1:1773\n168#1:1774,2\n168#1:1776,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0011\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001TB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u00102\u001a\u0002032\u0006\u00104\u001a\u000201J$\u00109\u001a\u00020\u00052\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u00052\u0008\u0010=\u001a\u0004\u0018\u00010\u0005H\u0002J$\u0010>\u001a\u00020.2\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u00052\u0008\u0010=\u001a\u0004\u0018\u00010\u0005H\u0002J$\u0010?\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u00052\u0008\u0010=\u001a\u0004\u0018\u00010\u0005H\u0002J\"\u0010@\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u00052\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0005J\u0016\u0010A\u001a\u0002032\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020\u0005J\u000e\u0010B\u001a\u0002032\u0006\u0010:\u001a\u00020;J&\u0010C\u001a\u00020)2\u0006\u0010:\u001a\u00020;2\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0005J\u0018\u0010D\u001a\u00020)2\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u0005J&\u0010E\u001a\u00020.2\u0006\u0010:\u001a\u00020;2\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010=\u001a\u0004\u0018\u00010\u0005J\u0018\u0010F\u001a\u00020.2\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u0005J\u000e\u0010P\u001a\u0002032\u0006\u0010Q\u001a\u00020\u0005J\u0010\u0010R\u001a\u0002032\u0006\u0010S\u001a\u000201H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u00105\u001a\u0008\u0012\u0004\u0012\u0002060\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00107R\u0016\u00108\u001a\u0008\u0012\u0004\u0012\u0002060\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00107R\u001a\u0010G\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u0017\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00050M\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010O\u00a8\u0006U"
    }
    d2 = {
        "Lcom/jichi/ob/api/GarminApi$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "lastGarminAuthError",
        "getLastGarminAuthError",
        "()Ljava/lang/String;",
        "setLastGarminAuthError",
        "(Ljava/lang/String;)V",
        "LOGIN_URL_COM",
        "LOGIN_URL_CN",
        "IOS_SSO_CLIENT_ID",
        "IOS_SERVICE_URL_COM",
        "IOS_SERVICE_URL_CN",
        "IOS_LOGIN_UA",
        "DI_TOKEN_URL_COM",
        "DI_TOKEN_URL_CN",
        "DI_GRANT_TYPE_COM",
        "DI_GRANT_TYPE_CN",
        "CONNECT_API_HOST_COM",
        "CONNECT_API_HOST_CN",
        "SSO_LOGIN_URL_COM",
        "SSO_LOGIN_URL_CN",
        "DI_CLIENT_IDS",
        "",
        "[Ljava/lang/String;",
        "NATIVE_API_UA",
        "NATIVE_X_GARMIN_UA",
        "OAUTH1_CONSUMER_KEY",
        "OAUTH1_CONSUMER_SECRET",
        "OAUTH1_SERVICE_COM",
        "OAUTH1_SERVICE_CN",
        "SSO_SIGNIN_COM",
        "SSO_SIGNIN_CN",
        "OAUTH1_BASE_COM",
        "OAUTH1_BASE_CN",
        "sharedWebView",
        "Landroid/webkit/WebView;",
        "sharedWebViewReady",
        "",
        "webViewLoading",
        "mainHandler",
        "Landroid/os/Handler;",
        "COOLDOWN_MS",
        "",
        "PREFS_COOLDOWN",
        "appContext",
        "Landroid/content/Context;",
        "setAppContext",
        "",
        "ctx",
        "SSO_CHANNELS_COM",
        "Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;",
        "[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;",
        "SSO_CHANNELS_CN",
        "cooldownKey",
        "ds",
        "Lcom/jichi/ob/model/DataSource;",
        "email",
        "clientId",
        "readCooldown",
        "writeCooldown",
        "writeCooldownFor",
        "clearCooldownFor",
        "clearAllCooldownFor",
        "isCooldown",
        "isAllChannelsCooldown",
        "cooldownRemainMinutes",
        "cooldownRemainAnyMinutes",
        "enableDebugLogs",
        "getEnableDebugLogs",
        "()Z",
        "setEnableDebugLogs",
        "(Z)V",
        "debugLogs",
        "",
        "getDebugLogs",
        "()Ljava/util/List;",
        "addDebugLog",
        "msg",
        "initSharedWebView",
        "context",
        "SsoChannel",
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


# direct methods
.method public static synthetic $r8$lambda$Lm1vItdDfGNZ7oZVa2rhqzzRSm8(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/GarminApi$Companion;->initSharedWebView$lambda$7(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/GarminApi$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$writeCooldown(Lcom/jichi/ob/api/GarminApi$Companion;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->writeCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 122
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "_cooldown_"

    const-string v2, "garmin_"

    const-string v3, "cn"

    const-string v4, "com"

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    .line 124
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 125
    :cond_3
    :goto_1
    move-object p2, p3

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    .line 126
    :cond_4
    sget-object p2, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, v4

    .line 127
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 129
    :cond_6
    :goto_3
    sget-object p2, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, p2, :cond_7

    const-string p1, "garmin_cn_cooldown_until"

    return-object p1

    :cond_7
    const-string p1, "garmin_com_cooldown_until"

    return-object p1
.end method

.method public static synthetic cooldownRemainMinutes$default(Lcom/jichi/ob/api/GarminApi$Companion;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)J
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 182
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final initSharedWebView$lambda$7(Landroid/content/Context;)V
    .locals 1

    .line 209
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0, p0}, Lcom/jichi/ob/api/GarminApi$Companion;->initSharedWebView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic isCooldown$default(Lcom/jichi/ob/api/GarminApi$Companion;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 174
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->isCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final readCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    .line 132
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getAppContext$cp()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 133
    :cond_0
    const-string v3, "garmin_cooldown"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private final writeCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 136
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getAppContext$cp()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    const-string v1, "garmin_cooldown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/32 v1, 0x5265c00

    add-long/2addr p2, v1

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic writeCooldownFor$default(Lcom/jichi/ob/api/GarminApi$Companion;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->writeCooldownFor(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addDebugLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/jichi/ob/api/GarminApi$Companion;->getEnableDebugLogs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][GarminApi] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 199
    :try_start_0
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_1

    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v0}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v1

    .line 202
    const-string v0, "GarminApi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 198
    monitor-exit v1

    throw p1
.end method

.method public final clearAllCooldownFor(Lcom/jichi/ob/model/DataSource;)V
    .locals 10

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :try_start_0
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getAppContext$cp()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 165
    :cond_0
    const-string v1, "garmin_cooldown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    sget-object v1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v1, :cond_1

    const-string v1, "garmin_cn_"

    goto :goto_0

    :cond_1
    const-string v1, "garmin_com_"

    .line 167
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1773
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1774
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 168
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v1, v2, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1774
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1775
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 1773
    check-cast v5, Ljava/lang/Iterable;

    .line 1776
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 169
    :cond_4
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCooldownFor: \u5df2\u6e05\u7a7a["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "]\u5168\u90e8\u51b7\u5374\u7f13\u5b58("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u952e)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    return-void
.end method

.method public final clearCooldownFor(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)V
    .locals 7

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    :try_start_0
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getAppContext$cp()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 150
    :cond_0
    const-string v1, "garmin_cooldown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, v1, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-direct {p0, p1, p2, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v1, "oauth1"

    invoke-direct {p0, p1, p2, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_COM$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v1

    .line 1769
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 155
    sget-object v6, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, p1, p2, v5}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_CN$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v1

    .line 1771
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 156
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, p1, p2, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownKey(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearCooldownFor: \u5df2\u6e05\u9664\u8d26\u53f7["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]\u51b7\u5374\u7f13\u5b58"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public final cooldownRemainAnyMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)J
    .locals 6

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_CN$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_COM$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v0

    .line 189
    :goto_0
    array-length v1, v0

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v1}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, p2, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_3

    :goto_1
    aget-object v4, v0, v3

    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, p2, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->cooldownRemainMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move-object v1, v4

    :cond_2
    if-eq v3, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_4
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final cooldownRemainMinutes(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->readCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    const p3, 0xea60

    int-to-long v0, p3

    .line 184
    div-long/2addr p1, v0

    return-wide p1

    :cond_0
    return-wide v0
.end method

.method public final getDebugLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getDebugLogs$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getEnableDebugLogs()Z
    .locals 1

    .line 192
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getEnableDebugLogs$cp()Z

    move-result v0

    return v0
.end method

.method public final getLastGarminAuthError()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getLastGarminAuthError$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initSharedWebView(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getMainHandler$cp()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jichi/ob/api/GarminApi$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/jichi/ob/api/GarminApi$Companion$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 213
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 214
    const-string v0, "initSharedWebView: \u521b\u5efaWebView\uff0c\u52a0\u8f7dabout:blank"

    invoke-virtual {p0, v0}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 217
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 218
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 219
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v2, "Mozilla/5.0 (Linux; Android 14; Pixel 8 Build/UQ1A.240205.004; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/120.0.6099.230 Mobile Safari/537.36"

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 220
    new-instance p1, Lcom/jichi/ob/api/GarminApi$Companion$initSharedWebView$2$1;

    invoke-direct {p1}, Lcom/jichi/ob/api/GarminApi$Companion$initSharedWebView$2$1;-><init>()V

    check-cast p1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 215
    invoke-static {v0}, Lcom/jichi/ob/api/GarminApi;->access$setSharedWebView$cp(Landroid/webkit/WebView;)V

    .line 234
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 235
    invoke-virtual {p1, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 236
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 238
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSharedWebView$cp()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView\u521b\u5efa\u5f02\u5e38: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public final isAllChannelsCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_CN$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/jichi/ob/api/GarminApi;->access$getSSO_CHANNELS_COM$cp()[Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;

    move-result-object v0

    .line 1778
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 179
    sget-object v5, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v4}, Lcom/jichi/ob/api/GarminApi$Companion$SsoChannel;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1, p2, v4}, Lcom/jichi/ob/api/GarminApi$Companion;->isCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final isCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->readCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/jichi/ob/api/GarminApi;->access$setAppContext$cp(Landroid/content/Context;)V

    return-void
.end method

.method public final setEnableDebugLogs(Z)V
    .locals 0

    .line 192
    invoke-static {p1}, Lcom/jichi/ob/api/GarminApi;->access$setEnableDebugLogs$cp(Z)V

    return-void
.end method

.method public final setLastGarminAuthError(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/jichi/ob/api/GarminApi;->access$setLastGarminAuthError$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final writeCooldownFor(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/jichi/ob/api/GarminApi$Companion;->writeCooldown(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
