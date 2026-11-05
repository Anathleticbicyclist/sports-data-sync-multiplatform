.class public Lcom/jichi/ob/TimeZoneSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TimeZoneSettingsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/jichi/ob/TimeZoneSettingsActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
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


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/jichi/ob/TimeZoneSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jichi/ob/TimeZoneSettingsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/jichi/ob/R$layout;->activity_timezone_settings:I

    invoke-virtual {p0, p1}, Lcom/jichi/ob/TimeZoneSettingsActivity;->setContentView(I)V

    const-string p1, "jichi_ob_prefs"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/TimeZoneSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/TimeZoneSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    sget p1, Lcom/jichi/ob/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/jichi/ob/TimeZoneSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/jichi/ob/R$id;->containerTimezone:I

    invoke-virtual {p0, p1}, Lcom/jichi/ob/TimeZoneSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u9488\u5bf9\u4e0a\u4f20\u5230 iGPSPORT \u7684\u5404\u5e73\u53f0\u8fd0\u52a8\u6570\u636e\u8fdb\u884c\u65f6\u533a\u8c03\u6574\u3002iGPSPORT \u670d\u52a1\u5668\u6309 UTC+8 \u89e3\u6790\uff0c\u90e8\u5206\u5e73\u53f0\u5386\u53f2\u6570\u636e\u53ef\u80fd\u504f8\u5c0f\u65f6\u3002\u6bcf\u4e2a\u5e73\u53f0\u53ef\u5355\u72ec\u8bbe\u7f6e\u5f53\u5929/\u5386\u53f2\u7684\u8c03\u6574\u65b9\u5411\u3002"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xd

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v2, -0x55000000

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0xb

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v4, "\u8fc8\u91d1"

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const-string/jumbo v5, "\u4f73\u660e\u56fd\u9645"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "\u4f73\u660e\u4e2d\u56fd"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "Keep"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "\u884c\u8005"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "\u9ed1\u9e1f"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "\u9ad8\u9a70\u4e2d\u56fd"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "\u9ad8\u9a70\u56fd\u9645"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "Wahoo"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "Intervals.icu"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "\u6587\u4ef6\u5939\u540c\u6b65"

    aput-object v5, v3, v4

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "MAGENE"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    const-string v6, "GARMIN_COM"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "GARMIN_CN"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "KEEP"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "XINGZHE"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "BLACKBIRD"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "COROS_CN"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "COROS_INT"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "WAHOO"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "INTERVALS_ICU"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "LOCAL_FOLDER"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0xb

    if-ge v5, v6, :cond_4

    aget-object v7, v3, v5

    aget-object v8, v4, v5

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0xf

    int-to-float v9, v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v9, -0x4c000000

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x8

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "\u5f53\u5929\uff1a"

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0xc

    int-to-float v9, v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x4

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RadioGroup;

    invoke-direct {p1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_same_day"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v10, "+8\u5c0f\u65f6"

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object v12, v9

    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v10, "-8\u5c0f\u65f6"

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object v13, v9

    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string/jumbo v10, "\u4e0d\u8c03\u6574"

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object v6, v9

    iget-object v9, p0, Lcom/jichi/ob/TimeZoneSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_same_day"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v11, 0x1

    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v9, "\u5386\u53f2\uff1a"

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0xc

    int-to-float v9, v9

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x2

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RadioGroup;

    invoke-direct {p1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_history"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v10, "+8\u5c0f\u65f6"

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object v12, v9

    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string v10, "-8\u5c0f\u65f6"

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object v13, v9

    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const-string/jumbo v10, "\u4e0d\u8c03\u6574"

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xc

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextSize(F)V

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    move-object v7, v9

    iget-object v9, p0, Lcom/jichi/ob/TimeZoneSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_history"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :cond_2
    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    const/4 v11, 0x1

    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/jichi/ob/R$color;->divider:I

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getColor(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x8

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v10, 0x8

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
