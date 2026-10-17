.class public final Lcom/jichi/ob/api/DevOAuth2Api$Companion;
.super Ljava/lang/Object;
.source "DevOAuth2Api.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/DevOAuth2Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;,
        Lcom/jichi/ob/api/DevOAuth2Api$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/jichi/ob/api/DevOAuth2Api$Companion;",
        "",
        "<init>",
        "()V",
        "REDIRECT",
        "",
        "conf",
        "Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;",
        "ds",
        "Lcom/jichi/ob/model/DataSource;",
        "isDevOAuth",
        "",
        "buildAuthUrl",
        "clientId",
        "PlatformConf",
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
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/api/DevOAuth2Api$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildAuthUrl(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion;->conf(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;->getAuthUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;->getExtraParams()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?client_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "&response_type=code&redirect_uri=http://localhost:8080/callback&scope="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final conf(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;
    .locals 12

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/jichi/ob/api/DevOAuth2Api$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v1, "https://oauth.trainingpeaks.com/oauth/authorize"

    const-string v2, "https://oauth.trainingpeaks.com/oauth/token"

    const-string/jumbo v3, "workouts:read"

    const-string v4, "https://api.trainingpeaks.com/v1/workouts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 79
    :cond_1
    new-instance v1, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    const/4 v6, 0x0

    .line 85
    const-string v7, "&state=1"

    .line 79
    const-string v2, "https://account.withings.com/oauth2_user/authorize2"

    const-string v3, "https://account.withings.com/oauth2/token"

    const-string/jumbo v4, "user.activity"

    const-string v5, "https://api.health.nokia.com/v2/workouts"

    invoke-direct/range {v1 .. v7}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 71
    :cond_2
    new-instance v2, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    const/4 v7, 0x0

    .line 77
    const-string v8, "&expires_in=31536000"

    .line 71
    const-string v3, "https://www.fitbit.com/oauth2/authorize"

    const-string v4, "https://api.fitbit.com/oauth2/token"

    const-string v5, "activity"

    const-string v6, "https://api.fitbit.com/1/user/-/activities/list.json"

    invoke-direct/range {v2 .. v8}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 64
    :cond_3
    new-instance v3, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "https://flow.polar.com/oauth2/authorization"

    const-string v5, "https://polarremote.com/v2/oauth2/token"

    const-string/jumbo v6, "training:read"

    const-string v7, "https://www.polaraccesslink.com/v3/exercises"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    .line 56
    :cond_4
    new-instance v4, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    .line 61
    const-string v9, "https://www.strava.com/api/v3/uploads"

    .line 62
    const-string v10, "&approval_prompt=auto"

    .line 56
    const-string v5, "https://www.strava.com/oauth/authorize"

    const-string v6, "https://www.strava.com/oauth/token"

    const-string v7, "activity:read_all,activity:write"

    const-string v8, "https://www.strava.com/api/v3/athlete/activities"

    invoke-direct/range {v4 .. v10}, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public final isDevOAuth(Lcom/jichi/ob/model/DataSource;)Z
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/DevOAuth2Api$Companion;->conf(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
