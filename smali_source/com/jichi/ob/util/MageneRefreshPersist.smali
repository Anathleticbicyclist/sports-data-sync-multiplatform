.class public final Lcom/jichi/ob/util/MageneRefreshPersist;
.super Ljava/lang/Object;
.source "MageneRefreshPersist.java"


# static fields
.field private static final KEY_REFRESH:Ljava/lang/String; = "magene_refresh_token"

.field private static final PREFS_NAME:Ljava/lang/String; = "jichi_ob"

.field private static final TAG:Ljava/lang/String; = "MageneApi"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static appContext()Landroid/content/Context;
    .locals 3

    .line 58
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.jichi.ob.api.GarminApi"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    const-string v2, "appContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 63
    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 65
    :cond_0
    return-object v0

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    return-object v0
.end method

.method public static handle(Lorg/json/JSONObject;)V
    .locals 4

    .line 33
    const-string v0, ""

    const-string v1, "MageneApi"

    if-nez p0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    :try_start_0
    const-string v2, "refresh_token"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 38
    const-string v2, "refreshToken"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_2

    .line 41
    return-void

    .line 43
    :cond_2
    invoke-static {}, Lcom/jichi/ob/util/MageneRefreshPersist;->appContext()Landroid/content/Context;

    move-result-object p0

    .line 44
    if-nez p0, :cond_3

    .line 45
    const-string p0, "refresh_token \u672a\u56de\u5199\uff1a\u9759\u6001 Context \u4e0d\u53ef\u7528"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 48
    :cond_3
    const-string v0, "jichi_ob"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "magene_refresh_token"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refresh_token \u5df2\u56de\u5199, len="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh_token \u56de\u5199\u5931\u8d25(\u5ffd\u7565): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void
.end method
