.class public Lcom/jichi/bikecomputer/SensorActivity;
.super Landroid/app/Activity;
.source "SensorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;,
        Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;
    }
.end annotation


# static fields
.field private static final REQ_BT:I = 0x7d1


# instance fields
.field private ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

.field private final devViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

.field private prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

.field private final scanned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final scannedMacs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stateViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final unbindViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scannedMacs:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/jichi/bikecomputer/SensorActivity;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jichi/bikecomputer/SensorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/SensorActivity;->boundTypeOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/jichi/bikecomputer/SensorActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jichi/bikecomputer/SensorActivity;->refreshBinds()V

    return-void
.end method

.method static synthetic access$300(Lcom/jichi/bikecomputer/SensorActivity;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jichi/bikecomputer/SensorActivity;->addScanned(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V

    return-void
.end method

.method private addScanned(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scannedMacs:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;

    .line 224
    iget-object v1, v0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->mac:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iput p4, v0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->rssi:I

    .line 226
    iget-object p1, v0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object p2, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne p1, p2, :cond_1

    iput-object p3, v0, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    invoke-virtual {p1}, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->notifyDataSetChanged()V

    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scannedMacs:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    new-instance v1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    invoke-virtual {p1}, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private boundTypeOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 197
    const-string v0, "SPEED"

    const-string v1, "CADENCE_RUN"

    const-string v2, "HEART_RATE"

    const-string v3, "POWER"

    const-string v4, "CADENCE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 198
    iget-object v3, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v3, v2}, Lcom/jichi/bikecomputer/store/PrefsManager;->getBoundMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-static {v2}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->valueOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object p1

    iget-object p1, p1, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->label:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private promptType(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;)V
    .locals 9

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-string v2, "SPEED"

    const-string v3, "CADENCE_RUN"

    const-string v4, "HEART_RATE"

    const-string v5, "POWER"

    const-string v6, "CADENCE"

    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 244
    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->HEART_RATE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    const/4 v4, 0x0

    if-ne p3, v3, :cond_1

    :cond_0
    move p3, v4

    goto :goto_1

    .line 245
    :cond_1
    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->POWER:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne p3, v3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    .line 246
    :cond_2
    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-eq p3, v3, :cond_4

    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->SPEED:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne p3, v3, :cond_3

    goto :goto_0

    .line 248
    :cond_3
    sget-object v3, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->CADENCE_RUN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne p3, v3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p3, 0x2

    :goto_1
    move v3, v4

    :goto_2
    const/4 v5, 0x5

    if-ge v3, v5, :cond_7

    .line 249
    aget-object v5, v2, v3

    .line 250
    invoke-static {v5}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->valueOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object v6

    iget-object v6, v6, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->label:Ljava/lang/String;

    .line 251
    iget-object v7, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v7, v5}, Lcom/jichi/bikecomputer/store/PrefsManager;->getBoundMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 253
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\uff08\u5df2\u7ed1\u5b9a\u5f53\u524d\u8bbe\u5907\uff09"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 256
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\uff08\u66ff\u6362 "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\uff09"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 259
    :cond_6
    :goto_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 262
    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u7ed1\u5b9a\u4e3a\uff1a"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    .line 264
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/bikecomputer/SensorActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p3, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "\u53d6\u6d88"

    const/4 p3, 0x0

    .line 271
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private refreshBinds()V
    .locals 8

    .line 277
    const-string v0, "SPEED"

    const-string v1, "CADENCE_RUN"

    const-string v2, "HEART_RATE"

    const-string v3, "POWER"

    const-string v4, "CADENCE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    .line 278
    iget-object v4, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v4, v3}, Lcom/jichi/bikecomputer/store/PrefsManager;->getBoundMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    iget-object v5, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 280
    iget-object v6, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 281
    iget-object v7, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 283
    const-string v4, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const-string v4, "\u2014"

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    .line 285
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 287
    :cond_0
    iget-object v7, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {v7, v4}, Lcom/jichi/bikecomputer/sensor/BleSensors;->nameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v5, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {v5, v4}, Lcom/jichi/bikecomputer/sensor/BleSensors;->isConnected(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    const-string v4, "\u5df2\u8fde\u63a5"

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0xb350b0

    .line 290
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 292
    :cond_1
    const-string v4, "\u672a\u8fde\u63a5"

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0xa8400

    .line 293
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private startScanning()V
    .locals 2

    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 207
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/jichi/bikecomputer/SensorActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->scannedMacs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 215
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->notifyDataSetChanged()V

    .line 216
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->startScan()V

    .line 217
    const-string v0, "\u626b\u63cf\u4e2d\u2026"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/jichi/bikecomputer/util/NightContext;->apply(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-jichi-bikecomputer-SensorActivity(Landroid/view/View;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/SensorActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-jichi-bikecomputer-SensorActivity(Landroid/view/View;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/jichi/bikecomputer/SensorActivity;->startScanning()V

    return-void
.end method

.method synthetic lambda$onCreate$2$com-jichi-bikecomputer-SensorActivity(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 177
    iget-object p2, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {p2, p1}, Lcom/jichi/bikecomputer/store/PrefsManager;->unbindSensor(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {v0, p1}, Lcom/jichi/bikecomputer/store/PrefsManager;->getBoundMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->forget(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/jichi/bikecomputer/SensorActivity;->refreshBinds()V

    return-void
.end method

.method synthetic lambda$onCreate$3$com-jichi-bikecomputer-SensorActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->scanned:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;

    .line 189
    iget-object p2, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->mac:Ljava/lang/String;

    iget-object p3, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    invoke-direct {p0, p2, p3, p1}, Lcom/jichi/bikecomputer/SensorActivity;->promptType(Ljava/lang/String;Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;)V

    return-void
.end method

.method synthetic lambda$promptType$4$com-jichi-bikecomputer-SensorActivity(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 265
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 266
    iget-object p5, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-virtual {p5, p1, p2}, Lcom/jichi/bikecomputer/store/PrefsManager;->bindSensor(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object p5, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-static {p1}, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->valueOf(Ljava/lang/String;)Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    move-result-object p1

    invoke-virtual {p5, p2, p1}, Lcom/jichi/bikecomputer/sensor/BleSensors;->connect(Ljava/lang/String;Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;)V

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u6b63\u5728\u8fde\u63a5 "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u2026"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 269
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007f

    .line 116
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/SensorActivity;->setContentView(I)V

    .line 117
    new-instance p1, Lcom/jichi/bikecomputer/store/PrefsManager;

    invoke-direct {p1, p0}, Lcom/jichi/bikecomputer/store/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->prefs:Lcom/jichi/bikecomputer/store/PrefsManager;

    .line 118
    new-instance p1, Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-direct {p1, p0}, Lcom/jichi/bikecomputer/sensor/BleSensors;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    .line 119
    new-instance v0, Lcom/jichi/bikecomputer/SensorActivity$1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/SensorActivity$1;-><init>(Lcom/jichi/bikecomputer/SensorActivity;)V

    invoke-virtual {p1, v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->setCallback(Lcom/jichi/bikecomputer/sensor/BleSensors$Callback;)V

    const p1, 0x7f080331

    .line 156
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/bikecomputer/SensorActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08033c

    .line 157
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/SensorActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    const v0, 0x7f08037d

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "HEART_RATE"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    const v0, 0x7f080387

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "POWER"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    const v0, 0x7f08036f

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "CADENCE"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    const v0, 0x7f08038a

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v4, "SPEED"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->devViews:Ljava/util/Map;

    const v0, 0x7f080371

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v5, "CADENCE_RUN"

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    const v0, 0x7f08037e

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    const v0, 0x7f080388

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    const v0, 0x7f080374

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    const v0, 0x7f08038b

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->stateViews:Ljava/util/Map;

    const v0, 0x7f080372

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    const v0, 0x7f080336

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    const v0, 0x7f080339

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    const v0, 0x7f080333

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    const v0, 0x7f08033e

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    const v0, 0x7f080332

    invoke-virtual {p0, v0}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    .line 176
    iget-object v2, p0, Lcom/jichi/bikecomputer/SensorActivity;->unbindViews:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/bikecomputer/SensorActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;-><init>(Lcom/jichi/bikecomputer/SensorActivity;Lcom/jichi/bikecomputer/SensorActivity$1;)V

    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity;->listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    const p1, 0x7f08034d

    .line 184
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/SensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 185
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->listAdapter:Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    new-instance v0, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/SensorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/bikecomputer/SensorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    invoke-direct {p0}, Lcom/jichi/bikecomputer/SensorActivity;->refreshBinds()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 304
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity;->ble:Lcom/jichi/bikecomputer/sensor/BleSensors;

    invoke-virtual {v0}, Lcom/jichi/bikecomputer/sensor/BleSensors;->stop()V

    return-void
.end method
