.class public Lcom/jichi/ob/TimeZoneSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.source "TimeZoneSettingsActivity.kt"


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
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/jichi/ob/TimeZoneSettingsActivity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    # p1 = RadioGroup, p2 = checkedId
    # 获取 RadioGroup tag
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :cond_end

    check-cast v0, Ljava/lang/String;

    # 获取选中的 RadioButton
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;
    move-result-object v1
    if-eqz v1, :cond_end

    # 获取 RadioButton tag（值：1=+8, 2=-8, 0=不调整）
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v2
    if-eqz v2, :cond_end

    check-cast v2, Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    move-result v3

    # 保存到 SharedPreferences
    iget-object v4, p0, Lcom/jichi/ob/TimeZoneSettingsActivity;->prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_end
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    # super.onCreate(savedInstanceState)
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    # setContentView
    sget p1, Lcom/jichi/ob/R$layout;->activity_timezone_settings:I
    invoke-virtual {p0, p1}, Lcom/jichi/ob/TimeZoneSettingsActivity;->setContentView(I)V

    # init SharedPreferences
    const-string p1, "jichi_ob_prefs"
    const/4 v0, 0x0
    invoke-virtual {p0, p1, v0}, Lcom/jichi/ob/TimeZoneSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object p1
    iput-object p1, p0, Lcom/jichi/ob/TimeZoneSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    # toolbar
    sget p1, Lcom/jichi/ob/R$id;->toolbar:I
    invoke-virtual {p0, p1}, Lcom/jichi/ob/TimeZoneSettingsActivity;->findViewById(I)Landroid/view/View;
    move-result-object p1
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    # container
    sget p1, Lcom/jichi/ob/R$id;->containerTimezone:I
    invoke-virtual {p0, p1}, Lcom/jichi/ob/TimeZoneSettingsActivity;->findViewById(I)Landroid/view/View;
    move-result-object v1
    check-cast v1, Landroid/widget/LinearLayout;

    # 说明文字
    new-instance p1, Landroid/widget/TextView;
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v2, "针对上传到 iGPSPORT 的各平台运动数据进行时区调整。iGPSPORT 服务器按 UTC+8 解析，部分平台历史数据可能偏8小时。每个平台可单独设置当天/历史的调整方向。"
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/16 v2, 0xd
    int-to-float v2, v2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    const/high16 v2, -0x55000000    # #ff666666
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1
    const/4 v4, -0x2
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v3, 0xc
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # 平台数据数组
    const/16 v2, 0xb    # 11个平台
    new-array v3, v2, [Ljava/lang/String;
    const-string v4, "\u8fc8\u91d1"
    aput-object v4, v3, v0
    const/4 v4, 0x1
    const-string v5, "\u4f73\u660e\u56fd\u9645"
    aput-object v5, v3, v4
    const/4 v4, 0x2
    const-string v5, "\u4f73\u660e\u4e2d\u56fd"
    aput-object v5, v3, v4
    const/4 v4, 0x3
    const-string v5, "Keep"
    aput-object v5, v3, v4
    const/4 v4, 0x4
    const-string v5, "\u884c\u8005"
    aput-object v5, v3, v4
    const/4 v4, 0x5
    const-string v5, "\u9ed1\u9e1f"
    aput-object v5, v3, v4
    const/4 v4, 0x6
    const-string v5, "\u9ad8\u9a70\u4e2d\u56fd"
    aput-object v5, v3, v4
    const/4 v4, 0x7
    const-string v5, "\u9ad8\u9a70\u56fd\u9645"
    aput-object v5, v3, v4
    const/16 v4, 0x8
    const-string v5, "Wahoo"
    aput-object v5, v3, v4
    const/16 v4, 0x9
    const-string v5, "Intervals.icu"
    aput-object v5, v3, v4
    const/16 v4, 0xa
    const-string v5, "\u6587\u4ef6\u5939\u540c\u6b65"
    aput-object v5, v3, v4

    # key数组（DataSource枚举名，与UploadEngine中record.getSource().name()一致）
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

    # 循环索引 v5 = 0
    const/4 v5, 0x0

    :loop_start
    # if v5 >= 11 goto loop_end
    const/16 v6, 0xb
    if-ge v5, v6, :loop_end

    # 获取平台显示名
    aget-object v7, v3, v5
    # 获取平台 key
    aget-object v8, v4, v5

    # === 创建标题 ===
    new-instance p1, Landroid/widget/TextView;
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    const/16 v9, 0xf
    int-to-float v9, v9
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextSize(F)V
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    const/high16 v9, -0x4c000000    # #ff333333
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setTextColor(I)V
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1
    const/4 v11, -0x2
    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    const/16 v10, 0x8
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # === 创建当天 RadioGroup ===
    # 标签
    new-instance p1, Landroid/widget/TextView;
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v9, "\u5f53\u5929\uff1a"
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

    # RadioGroup
    new-instance p1, Landroid/widget/RadioGroup;
    invoke-direct {p1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V
    const/4 v9, 0x0
    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    # tag = key + "_same_day"
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v10, "_same_day"
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    # 3个 RadioButton: +8, -8, 不调整
    # +8
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

    # -8
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

    # 不调整
    new-instance v9, Landroid/widget/RadioButton;
    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V
    const-string v10, "\u4e0d\u8c03\u6574"
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

    # 读取当天设置
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

    # 根据设置选中
    const/4 v10, 0x1
    if-ne v9, v10, :cond_same_minus
    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setChecked(Z)V
    goto :same_done

    :cond_same_minus
    const/4 v10, 0x2
    if-ne v9, v10, :cond_same_none
    const/4 v11, 0x1
    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setChecked(Z)V
    goto :same_done

    :cond_same_none
    const/4 v10, 0x1
    invoke-virtual {v6, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    :same_done
    # 设置监听
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    # 添加到容器
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1
    const/4 v11, -0x2
    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # === 创建历史 RadioGroup（类似当天） ===
    # 标签
    new-instance p1, Landroid/widget/TextView;
    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const-string v9, "\u5386\u53f2\uff1a"
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

    # RadioGroup
    new-instance p1, Landroid/widget/RadioGroup;
    invoke-direct {p1, p0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V
    const/4 v9, 0x0
    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setOrientation(I)V

    # tag = key + "_history"
    new-instance v9, Ljava/lang/StringBuilder;
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v10, "_history"
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {p1, v9}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    # +8
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

    # -8
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

    # 不调整
    new-instance v9, Landroid/widget/RadioButton;
    invoke-direct {v9, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V
    const-string v10, "\u4e0d\u8c03\u6574"
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

    # 读取历史设置
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

    # 根据设置选中
    const/4 v10, 0x1
    if-ne v9, v10, :cond_hist_minus
    invoke-virtual {v12, v10}, Landroid/widget/RadioButton;->setChecked(Z)V
    goto :hist_done

    :cond_hist_minus
    const/4 v10, 0x2
    if-ne v9, v10, :cond_hist_none
    const/4 v11, 0x1
    invoke-virtual {v13, v11}, Landroid/widget/RadioButton;->setChecked(Z)V
    goto :hist_done

    :cond_hist_none
    const/4 v10, 0x1
    invoke-virtual {v7, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    :hist_done
    # 设置监听
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    # 添加到容器
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1
    const/4 v11, -0x2
    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    invoke-virtual {v1, p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    # 分隔线
    new-instance p1, Landroid/view/View;
    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    const v9, -0x111112    # #ffeeeeee
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

    # 循环索引+1
    add-int/lit8 v5, v5, 0x1
    goto :loop_start

    :loop_end
    return-void
.end method
