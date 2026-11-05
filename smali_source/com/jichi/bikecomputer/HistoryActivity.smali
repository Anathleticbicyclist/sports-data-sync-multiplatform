.class public Lcom/jichi/bikecomputer/HistoryActivity;
.super Landroid/app/Activity;
.source "HistoryActivity.java"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final exports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private final unfinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    return-void
.end method

.method private exportUnfinished(Ljava/io/File;)V
    .locals 12

    .line 98
    invoke-static {p1}, Lcom/jichi/bikecomputer/store/TrackStore;->readAll(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    .line 99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v7, 0x0

    if-ge v0, v1, :cond_0

    .line 100
    const-string p1, "\u6709\u6548\u70b9\u4e0d\u8db3\uff0c\u65e0\u6cd5\u5bfc\u51fa"

    invoke-static {p0, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_track.json"

    const-string v8, ""

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "exports"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_recovered.fit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    new-instance v9, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_recovered.gpx"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-static {v6}, Lcom/jichi/bikecomputer/model/TrackStats;->fromPoints(Ljava/util/List;)Lcom/jichi/bikecomputer/model/TrackStats;

    move-result-object v4

    .line 110
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/bikecomputer/model/TrackPoint;

    iget-wide v10, v0, Lcom/jichi/bikecomputer/model/TrackPoint;->timestamp:J

    .line 111
    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-wide v2, v10

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/jichi/bikecomputer/export/FitExporter;->export(Ljava/util/List;Lcom/jichi/bikecomputer/model/SportType;JLcom/jichi/bikecomputer/model/TrackStats;Ljava/lang/String;)Z

    move-result v0

    .line 113
    sget-object v1, Lcom/jichi/bikecomputer/model/SportType;->CYCLING:Lcom/jichi/bikecomputer/model/SportType;

    .line 114
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v6, v1, v10, v11, v2}, Lcom/jichi/bikecomputer/export/GpxExporter;->export(Ljava/util/List;Lcom/jichi/bikecomputer/model/SportType;JLjava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    const-string p1, "\u5bfc\u51fa\u5931\u8d25"

    invoke-static {p0, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 116
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u5bfc\u51fa "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v0, "FIT "

    goto :goto_1

    :cond_4
    move-object v0, v8

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string v8, "GPX"

    :cond_5
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 120
    invoke-direct {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->scan()V

    :goto_2
    return-void
.end method

.method private resumeLast()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "\u6ca1\u6709\u53ef\u6062\u590d\u7684\u8bb0\u5f55"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 146
    :cond_0
    const-string v0, "\u70b9\u51fb\u5217\u8868\u4e2d\u7684\u672a\u5b8c\u6210\u8bb0\u5f55\u53ef\u5bfc\u51fa\u6216\u5220\u9664"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private scan()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "exports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    new-instance v0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 54
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "records"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u5bfc\u51fa \u00b7 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u672a\u5b8c\u6210\u8bb0\u5f55 \u00b7 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff08\u53ef\u6062\u590d\uff09"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 75
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\u6682\u65e0\u8bb0\u5f55"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 77
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/jichi/bikecomputer/HistoryActivity;->list:Landroid/widget/ListView;

    new-instance v1, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/bikecomputer/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private shareFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u5206\u4eab "

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "com.jichi.bikecomputer.fileprovider"

    invoke-static {p0, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 131
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    const-string p1, "\u65e0\u53ef\u7528\u5206\u4eab\u5e94\u7528"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/jichi/bikecomputer/util/NightContext;->apply(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-jichi-bikecomputer-HistoryActivity(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-jichi-bikecomputer-HistoryActivity(Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->resumeLast()V

    return-void
.end method

.method synthetic lambda$scan$2$com-jichi-bikecomputer-HistoryActivity(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->exportUnfinished(Ljava/io/File;)V

    return-void
.end method

.method synthetic lambda$scan$3$com-jichi-bikecomputer-HistoryActivity(Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 89
    invoke-direct {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->scan()V

    return-void
.end method

.method synthetic lambda$scan$4$com-jichi-bikecomputer-HistoryActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->shareFile(Ljava/io/File;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    if-ge p3, p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->unfinished:Ljava/util/List;

    iget-object p2, p0, Lcom/jichi/bikecomputer/HistoryActivity;->exports:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 83
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "\u672a\u5b8c\u6210\u8bb0\u5f55"

    .line 84
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n\u53ef\u76f4\u63a5\u5bfc\u51fa\u4e3a FIT/GPX\uff0c\u6216\u5220\u9664\u3002"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/bikecomputer/HistoryActivity;Ljava/io/File;)V

    .line 86
    const-string p4, "\u5bfc\u51fa"

    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/bikecomputer/HistoryActivity;Ljava/io/File;)V

    .line 87
    const-string p1, "\u5220\u9664"

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b007d

    .line 38
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->setContentView(I)V

    const p1, 0x7f08034c

    .line 39
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/jichi/bikecomputer/HistoryActivity;->list:Landroid/widget/ListView;

    const p1, 0x7f080331

    .line 40
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/bikecomputer/HistoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08033a

    .line 41
    invoke-virtual {p0, p1}, Lcom/jichi/bikecomputer/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/bikecomputer/HistoryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/bikecomputer/HistoryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-direct {p0}, Lcom/jichi/bikecomputer/HistoryActivity;->scan()V

    return-void
.end method
