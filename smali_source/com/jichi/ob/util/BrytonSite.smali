.class public final Lcom/jichi/ob/util/BrytonSite;
.super Ljava/lang/Object;
.source "BrytonSite.java"


# static fields
.field private static volatile ctx:Landroid/content/Context;

.field private static volatile site:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static altBase()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://www.brytonsports.cn"

    return-object v0

    :cond_0
    const-string v0, "https://www.brytonsport.com"

    return-object v0
.end method

.method public static appendSiteCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->extraCookieUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    return-object v2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object p0
.end method

.method public static apiBaseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/api"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apiActivitiesListUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/activity/list?page="

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apiActivityByIdUrl()Ljava/lang/String;
    .locals 1

    # 新站 FIT 下载：GET {base}/api/activity?id={activityId}
    const-string v0, "/api/activity?id="

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apiActivityUploadUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/activity/upload"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apiActivityUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/activity/"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apiUsersMeUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/api/users/me"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static activitiesUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/activities"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    # 国际站 Bryton Active 实际站点：www.brytonsport.com 仅剩旧静态页（/activities、/api 均 404），
    # active.brytonsport.com 才提供 SPA + REST + SockJS/DDP
    const-string v0, "https://active.brytonsport.com"

    return-object v0

    :cond_0
    const-string v0, "http://www.brytonsports.cn"

    return-object v0
.end method

.method public static decorateTitle(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static extraCookieUrl()Ljava/lang/String;
    .locals 1

    # 国际站登录态 cookie 位于 active.brytonsport.com；国内站 cookie 已由原有 URL 列表覆盖
    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://active.brytonsport.com"

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/jichi/ob/util/BrytonSite;->site:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/jichi/ob/util/BrytonSite;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "cn"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->read()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jichi/ob/util/BrytonSite;->site:Ljava/lang/String;

    return-object v1
.end method

.method public static getToken()Ljava/lang/String;
    .locals 1

    const-string v0, "bryton_token"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->prefString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    const-string v0, "bryton_user_id"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->prefString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static host()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    # 片段匹配：www.brytonsport.com 与 active.brytonsport.com 都能命中
    const-string v0, "brytonsport.com"

    return-object v0

    :cond_0
    const-string v0, "brytonsports.cn"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/jichi/ob/util/BrytonSite;->ctx:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-object v0, Lcom/jichi/ob/util/BrytonSite;->ctx:Landroid/content/Context;

    :cond_1
    sget-object v0, Lcom/jichi/ob/util/BrytonSite;->site:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->read()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/util/BrytonSite;->site:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static isInt()Z
    .locals 2

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static label()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u56fd\u9645\u7ad9"

    return-object v0

    :cond_0
    const-string v0, "\u56fd\u5185\u7ad9"

    return-object v0
.end method

.method public static loginHomeUrl()Ljava/lang/String;
    .locals 1

    # 国内站沿用 /home；国际站直接进 SPA 根路径（active.brytonsport.com 的 /home 路由未验证）
    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->isInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->base()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "/home"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "int"

    return-object v0

    :cond_0
    const-string v0, "cn"

    return-object v0
.end method

.method private static prefString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/jichi/ob/util/BrytonSite;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "jichi_ob"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private static read()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/jichi/ob/util/BrytonSite;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "cn"

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "jichi_ob"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "bryton_site"

    const-string v3, "cn"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static refererUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/jichi/ob/util/BrytonSite;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/util/BrytonSite;->site:Ljava/lang/String;

    return-void
.end method

.method public static url(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/jichi/ob/util/BrytonSite;->base()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static workoutUploadUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "/workout/upload/"

    invoke-static {v0}, Lcom/jichi/ob/util/BrytonSite;->url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
