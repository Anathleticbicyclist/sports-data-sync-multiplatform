.class public Lcom/jichi/bikecomputer/store/PrefsManager;
.super Ljava/lang/Object;
.source "PrefsManager.java"


# static fields
.field public static final BIND_PREFIX:Ljava/lang/String; = "bind_"

.field public static final KEY_MAIN_DISPLAY:Ljava/lang/String; = "main_display"

.field public static final KEY_SHOW_ALT:Ljava/lang/String; = "show_alt"

.field public static final KEY_SHOW_ASCENT:Ljava/lang/String; = "show_ascent"

.field public static final KEY_SHOW_AVG:Ljava/lang/String; = "show_avg"

.field public static final KEY_SHOW_BARO:Ljava/lang/String; = "show_baro"

.field public static final KEY_SHOW_CAD:Ljava/lang/String; = "show_cad"

.field public static final KEY_SHOW_DIST:Ljava/lang/String; = "show_dist"

.field public static final KEY_SHOW_GRADE:Ljava/lang/String; = "show_grade"

.field public static final KEY_SHOW_HR:Ljava/lang/String; = "show_hr"

.field public static final KEY_SHOW_MAX:Ljava/lang/String; = "show_max"

.field public static final KEY_SHOW_POWER:Ljava/lang/String; = "show_power"

.field public static final KEY_SHOW_TIME:Ljava/lang/String; = "show_time"

.field public static final KEY_WHEEL_CM:Ljava/lang/String; = "wheel_circumference_m"

.field private static final PREF:Ljava/lang/String; = "bike_prefs"


# instance fields
.field private final sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "bike_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public bindSensor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAllBinds()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 82
    const-string v3, "bind_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBoundMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMainDisplay()Ljava/lang/String;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "main_display"

    const-string v2, "speed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWheelCircumference()D
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    const-string v1, "wheel_circumference_m"

    const v2, 0x400624dd    # 2.096f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public isShow(Ljava/lang/String;)Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setMainDisplay(Ljava/lang/String;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "main_display"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setShow(Ljava/lang/String;Z)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWheelCircumference(D)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wheel_circumference_m"

    double-to-float p1, p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public unbindSensor(Ljava/lang/String;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/jichi/bikecomputer/store/PrefsManager;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
