.class public Lcom/jichi/bikecomputer/DisplayActivity;
.super Landroid/app/Activity;
.source "DisplayActivity.java"


# instance fields
.field private final optKeys:[Ljava/lang/String;

.field private final opts:[Landroid/widget/TextView;

.field private prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

.field private sport:Lcom/jichi/bikecomputer/model/SportType;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    .line 23
    const-string v0, "pace"

    const-string v1, "alt"

    const-string v2, "speed"

    const-string v3, "power"

    const-string v4, "hr"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity;->optKeys:[Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    iput-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    return-void
.end method

.method private bindSwitch(ILjava/lang/String;)V
    .locals 1

    .line 111
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 112
    iget-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v0, p2}, Lcom/jichi/bikecomputer/store/PrefsManager;->isShow(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    new-instance v0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/DisplayActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/jichi/bikecomputer/DisplayActivity;->optKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private selectMain(I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    iget-object v1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->optKeys:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/jichi/bikecomputer/store/PrefsManager;->setMainDisplay(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-ne v0, p1, :cond_1

    const v2, 0x7f07011e

    goto :goto_1

    :cond_1
    const v2, 0x7f07011d

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/jichi/bikecomputer/util/NightContext;->apply(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$bindSwitch$3$com-jichi-bikecomputer-DisplayActivity(Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 113
    iget-object p2, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {p2, p1, p3}, Lcom/jichi/bikecomputer/store/PrefsManager;->setShow(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-jichi-bikecomputer-DisplayActivity(ILandroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->selectMain(I)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-jichi-bikecomputer-DisplayActivity(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5

    .line 0
    const-string p2, "\u8f6e\u5468\u957f\u5df2\u4fdd\u5b58\uff1a"

    .line 76
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {p1, v1, v2}, Lcom/jichi/bikecomputer/store/PrefsManager;->setWheelCircumference(D)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.3fm"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 85
    :cond_1
    const-string p1, "\u8f6e\u5468\u957f\u9700\u5728 1.0~3.0m \u4e4b\u95f4"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u6570\u5b57"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$2$com-jichi-bikecomputer-DisplayActivity(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/DisplayActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007c

    .line 34
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->setContentView(I)V

    .line 35
    new-instance p1, Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-direct {p1, p0}, Lcom/jichi/bikecomputer/store/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    .line 36
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/DisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "sport"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/model/SportType;

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    const v0, 0x7f080353

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 40
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    const v0, 0x7f080352

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 41
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    const v0, 0x7f080350

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 42
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    const v0, 0x7f080351

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v0, p1, v3

    .line 43
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    const v0, 0x7f08034f

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x4

    aput-object v0, p1, v4

    :goto_0
    const/4 p1, 0x5

    if-ge v1, p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    new-instance v0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1}, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/DisplayActivity;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_2

    .line 50
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->sport:Lcom/jichi/bikecomputer/model/SportType;

    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    if-ne p1, v0, :cond_3

    .line 53
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 56
    :cond_3
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->opts:[Landroid/widget/TextView;

    aget-object p1, p1, v4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_1
    iget-object p1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {p1}, Lcom/jichi/bikecomputer/store/PrefsManager;->getMainDisplay()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->selectMain(I)V

    const p1, 0x7f080365

    .line 61
    const-string v0, "show_time"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f080364

    .line 62
    const-string v0, "show_power"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f080362

    .line 63
    const-string v0, "show_hr"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f08035f

    .line 64
    const-string v0, "show_cad"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f080360

    .line 65
    const-string v0, "show_dist"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f08035c

    .line 66
    const-string v0, "show_ascent"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f080361

    .line 67
    const-string v0, "show_grade"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f08035b

    .line 68
    const-string v0, "show_alt"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f08035d

    .line 69
    const-string v0, "show_avg"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f080363

    .line 70
    const-string v0, "show_max"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f08035e

    .line 71
    const-string v0, "show_baro"

    invoke-direct {p0, p1, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->bindSwitch(ILjava/lang/String;)V

    const p1, 0x7f080346

    .line 73
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/jichi/bikecomputer/DisplayActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v1}, Lcom/jichi/bikecomputer/store/PrefsManager;->getWheelCircumference()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.3f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08033b

    .line 75
    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/bikecomputer/DisplayActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080331

    .line 92
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/DisplayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/DisplayActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/bikecomputer/DisplayActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
