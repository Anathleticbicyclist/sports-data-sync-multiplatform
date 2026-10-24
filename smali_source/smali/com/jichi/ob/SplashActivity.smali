.class public final Lcom/jichi/ob/SplashActivity;
.super Landroidx/activity/ComponentActivity;
.source "SplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplashActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashActivity.kt\ncom/jichi/ob/SplashActivity\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,95:1\n32#2:96\n95#2,14:97\n*S KotlinDebug\n*F\n+ 1 SplashActivity.kt\ncom/jichi/ob/SplashActivity\n*L\n85#1:96\n85#1:97,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/jichi/ob/SplashActivity;",
        "Landroidx/activity/ComponentActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.method public static synthetic $r8$lambda$djwpy8zFfBy_GhumZKRGfMZcoAs(Landroid/view/View;Lcom/jichi/ob/SplashActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/SplashActivity;->onCreate$lambda$6(Landroid/view/View;Lcom/jichi/ob/SplashActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$6(Landroid/view/View;Lcom/jichi/ob/SplashActivity;)V
    .locals 2

    const/4 v0, 0x2

    .line 82
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 83
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x96

    .line 84
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 85
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/animation/Animator;

    .line 103
    new-instance v1, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;

    invoke-direct {v1, p1}, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;-><init>(Lcom/jichi/ob/SplashActivity;)V

    .line 109
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 25
    # v9.2.9 深色模式：启动前应用 dark_mode 设置（system/light/dark）
    new-instance v8, Lcom/jichi/ob/util/PrefsManager;

    move-object v9, p0

    check-cast v9, Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/jichi/ob/util/PrefsManager;->getDarkMode()Ljava/lang/String;

    move-result-object v8

    const-string v9, "light"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dark_sys

    const/4 v8, 0x1

    goto :goto_dark_apply

    :cond_dark_sys
    const-string v9, "dark"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_dark_sys_default

    const/4 v8, 0x2

    goto :goto_dark_apply

    :cond_dark_sys_default
    const/4 v8, 0x0

    :goto_dark_apply
    invoke-static {v8}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/jichi/ob/R$layout;->activity_splash:I

    invoke-virtual {p0, p1}, Lcom/jichi/ob/SplashActivity;->setContentView(I)V

    .line 29
    sget p1, Lcom/jichi/ob/R$id;->splashBg:I

    invoke-virtual {p0, p1}, Lcom/jichi/ob/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 30
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 31
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v2, -0x361a01

    const v3, -0xb25501

    .line 34
    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 30
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 37
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget p1, Lcom/jichi/ob/R$id;->splashText:I

    invoke-virtual {p0, p1}, Lcom/jichi/ob/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x3f6147ae    # 0.88f

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 45
    sget v1, Lcom/jichi/ob/R$id;->tvSplashTitle:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    sget v1, Lcom/jichi/ob/R$id;->tvSplashSlogan:I

    invoke-virtual {p0, v1}, Lcom/jichi/ob/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x3

    .line 52
    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v2, v6

    .line 53
    new-array v4, v3, [F

    fill-array-data v4, :array_1

    const-string v6, "scaleX"

    invoke-static {v6, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v2, v7

    .line 54
    new-array v4, v3, [F

    fill-array-data v4, :array_2

    const-string v7, "scaleY"

    invoke-static {v7, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    .line 50
    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x15e

    .line 56
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 57
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    new-array v2, v3, [F

    fill-array-data v2, :array_3

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 63
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 65
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 69
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    invoke-static {p1, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 74
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    invoke-static {p1, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 76
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/jichi/ob/SplashActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/jichi/ob/SplashActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/jichi/ob/SplashActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f6147ae    # 0.88f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data
.end method
