.class Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;
.super Landroid/widget/BaseAdapter;
.source "SensorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/bikecomputer/SensorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScannedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jichi/bikecomputer/SensorActivity;


# direct methods
.method private constructor <init>(Lcom/jichi/bikecomputer/SensorActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jichi/bikecomputer/SensorActivity;Lcom/jichi/bikecomputer/SensorActivity$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;-><init>(Lcom/jichi/bikecomputer/SensorActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-static {v0}, Lcom/jichi/bikecomputer/SensorActivity;->access$000(Lcom/jichi/bikecomputer/SensorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-static {v0}, Lcom/jichi/bikecomputer/SensorActivity;->access$000(Lcom/jichi/bikecomputer/SensorActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 77
    iget-object p2, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b0080

    .line 78
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    :cond_0
    iget-object p3, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    invoke-static {p3}, Lcom/jichi/bikecomputer/SensorActivity;->access$000(Lcom/jichi/bikecomputer/SensorActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;

    const p3, 0x7f080377

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f080379

    .line 82
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080376

    .line 83
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080378

    .line 84
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 86
    iget-object v4, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->name:Ljava/lang/String;

    .line 87
    iget-object v5, p0, Lcom/jichi/bikecomputer/SensorActivity$ScannedAdapter;->this$0:Lcom/jichi/bikecomputer/SensorActivity;

    iget-object v6, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->mac:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jichi/bikecomputer/SensorActivity;->access$100(Lcom/jichi/bikecomputer/SensorActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v6, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    sget-object v7, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->UNKNOWN:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    if-ne v6, v7, :cond_1

    .line 90
    const-string v6, "\u672a\u77e5\u8bbe\u5907"

    goto :goto_0

    .line 91
    :cond_1
    iget-object v6, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->type:Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;

    iget-object v6, v6, Lcom/jichi/bikecomputer/sensor/BleSensors$DeviceType;->label:Ljava/lang/String;

    .line 89
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_2

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff08\u5df2\u7ed1\u5b9a"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff09"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string v4, "\u5df2\u7ed1\u5b9a"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_2
    iget-object v1, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->mac:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->rssi:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dBm"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget p1, p1, Lcom/jichi/bikecomputer/SensorActivity$ScannedItem;->rssi:I

    const/16 v1, -0x5f

    if-ge p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    const p1, -0x655c51

    if-eqz v0, :cond_4

    move v1, p1

    goto :goto_1

    :cond_4
    const v1, -0xe4ded7

    .line 102
    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const p1, -0x948d80

    .line 103
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
