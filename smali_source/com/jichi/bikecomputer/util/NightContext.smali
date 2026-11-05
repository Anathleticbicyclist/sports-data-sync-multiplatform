.class public Lcom/jichi/bikecomputer/util/NightContext;
.super Ljava/lang/Object;
.source "NightContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 7
    :try_start_0
    new-instance v0, Lcom/jichi/ob/util/PrefsManager;

    invoke-direct {v0, p0}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jichi/ob/util/PrefsManager;->getDarkMode()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz v0, :cond_2

    .line 10
    const-string v2, "dark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/lit8 v0, v0, 0x20

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_0

    .line 11
    :cond_0
    const-string v2, "light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    goto :goto_0

    .line 12
    :cond_1
    iget v0, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, -0x31

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p0
.end method
