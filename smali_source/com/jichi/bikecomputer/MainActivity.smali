.class public Lcom/jichi/bikecomputer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final REQ_BODY:I = 0x3ea

.field private static final REQ_PERMS:I = 0x3e9


# instance fields
.field private final cards:[Landroid/widget/TextView;

.field private selected:Lcom/jichi/bikecomputer/model/SportType;

.field private final types:[Lcom/jichi/bikecomputer/model/SportType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    sget-object v0, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    iput-object v0, p0, Lcom/jichi/bikecomputer/MainActivity;->selected:Lcom/jichi/bikecomputer/model/SportType;

    const/4 v0, 0x3

    .line 24
    new-array v1, v0, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    .line 25
    new-array v0, v0, [Lcom/jichi/bikecomputer/model/SportType;

    const/4 v1, 0x0

    sget-object v2, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/jichi/bikecomputer/model/SportType;->RUNNING:Lcom/jichi/bikecomputer/model/SportType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/jichi/bikecomputer/model/SportType;->WALKING:Lcom/jichi/bikecomputer/model/SportType;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jichi/bikecomputer/MainActivity;->types:[Lcom/jichi/bikecomputer/model/SportType;

    return-void
.end method

.method private checkAndGo()V
    .locals 4

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 71
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_1

    .line 74
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v2}, Lcom/jichi/bikecomputer/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->requestBodySensors()V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 87
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/jichi/bikecomputer/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private enterBike()V
    .locals 3

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jichi/bikecomputer/BikeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const-string v1, "sport"

    iget-object v2, p0, Lcom/jichi/bikecomputer/MainActivity;->selected:Lcom/jichi/bikecomputer/model/SportType;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openHistory()V
    .locals 2

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jichi/bikecomputer/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requestBodySensors()V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 93
    const-string v0, "android.permission.BODY_SENSORS"

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/jichi/bikecomputer/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->enterBike()V

    return-void
.end method

.method private select(I)V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/jichi/bikecomputer/MainActivity;->types:[Lcom/jichi/bikecomputer/model/SportType;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/jichi/bikecomputer/MainActivity;->selected:Lcom/jichi/bikecomputer/model/SportType;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 58
    :goto_1
    iget-object v3, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 59
    iget-object v3, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    if-eqz v2, :cond_1

    const v2, 0x7f07011e

    goto :goto_2

    :cond_1
    const v2, 0x7f07011d

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/jichi/bikecomputer/util/NightContext;->apply(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-jichi-bikecomputer-MainActivity(ILandroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->select(I)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-jichi-bikecomputer-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->checkAndGo()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-jichi-bikecomputer-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->openHistory()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-jichi-bikecomputer-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 49
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jichi/bikecomputer/SensorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-jichi-bikecomputer-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 51
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/jichi/bikecomputer/DisplayActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$5$com-jichi-bikecomputer-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 122
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v0, "package"

    .line 124
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method synthetic lambda$onRequestPermissionsResult$6$com-jichi-bikecomputer-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->enterBike()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007e

    .line 35
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->setContentView(I)V

    .line 37
    iget-object p1, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    const v0, 0x7f080342

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 38
    iget-object p1, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    const v0, 0x7f080344

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 39
    iget-object p1, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    const v0, 0x7f080345

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x2

    aput-object v0, p1, v2

    move p1, v1

    :goto_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jichi/bikecomputer/MainActivity;->cards:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    new-instance v2, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/MainActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, v1}, Lcom/jichi/bikecomputer/MainActivity;->select(I)V

    const p1, 0x7f080335

    .line 46
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080337

    .line 47
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/bikecomputer/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08033d

    .line 48
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/bikecomputer/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080334

    .line 50
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/bikecomputer/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_1

    .line 105
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->requestBodySensors()V

    goto :goto_1

    .line 108
    :cond_0
    const-string p1, "\u9700\u8981\u5b9a\u4f4d\u6743\u9650\u624d\u80fd\u8bb0\u5f55\u8f68\u8ff9"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_4

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_3

    const-string p1, "android.permission.BODY_SENSORS"

    .line 114
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "\u8eab\u4f53\u4f20\u611f\u5668\u672a\u6388\u6743"

    .line 118
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u5fc3\u7387/\u6b65\u9891\u8bbe\u5907\u5c06\u65e0\u6cd5\u663e\u793a\u3002\u53ef\u5728\u7cfb\u7edf\u8bbe\u7f6e\u2192\u5e94\u7528\u2192\u6743\u9650\u4e2d\u5f00\u542f\uff08\u90e8\u5206\u7cfb\u7edf\u672a\u63d0\u4f9b\u8be5\u6743\u9650\u9879\u65f6\uff0c\u53ef\u5ffd\u7565\uff0c\u4ec5\u5fc3\u7387/\u6b65\u9891\u4e0d\u53ef\u7528\uff0c\u5176\u4f59\u529f\u80fd\u6b63\u5e38\uff09"

    .line 119
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/bikecomputer/MainActivity;)V

    .line 120
    const-string p3, "\u53bb\u7cfb\u7edf\u8bbe\u7f6e"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/jichi/bikecomputer/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/bikecomputer/MainActivity;)V

    .line 128
    const-string p3, "\u7ee7\u7eed"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 129
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 133
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/jichi/bikecomputer/MainActivity;->enterBike()V

    :cond_4
    :goto_1
    return-void
.end method
