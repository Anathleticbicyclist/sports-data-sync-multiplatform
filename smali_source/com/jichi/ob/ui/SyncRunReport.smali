.class public final Lcom/jichi/ob/ui/SyncRunReport;
.super Ljava/lang/Object;
.source "SyncRunReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final ENTRIES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/jichi/ob/ui/SyncRunReport;

.field private static final MAX_SUMMARY_ITEMS:I = 0x50

.field public static final ST_FAIL:Ljava/lang/String; = "fail"

.field public static final ST_OK:Ljava/lang/String; = "ok"

.field public static final ST_SKIP:Ljava/lang/String; = "skip"

.field private static activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static currentRecord:Lcom/jichi/ob/model/ActivityRecord;

.field private static currentTarget:Lcom/jichi/ob/model/DataSource;

.field private static lastDownloadDetail:Ljava/lang/String;

.field private static pendingToast:Ljava/lang/String;

.field private static retryIndex:I

.field private static retryMessage:Ljava/lang/String;

.field private static retryStatus:Ljava/lang/String;

.field private static retrying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/ui/SyncRunReport;

    invoke-direct {v0}, Lcom/jichi/ob/ui/SyncRunReport;-><init>()V

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->INSTANCE:Lcom/jichi/ob/ui/SyncRunReport;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->activityRef:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    sput v0, Lcom/jichi/ob/ui/SyncRunReport;->retryIndex:I

    const-string v0, ""

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->retryStatus:Ljava/lang/String;

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->retryMessage:Ljava/lang/String;

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->pendingToast:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->activityRef:Ljava/lang/ref/WeakReference;

    :cond_9
    return-void
.end method

.method public static declared-synchronized begin()V
    .locals 2

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    sput-object v1, Lcom/jichi/ob/ui/SyncRunReport;->currentRecord:Lcom/jichi/ob/model/ActivityRecord;

    sput-object v1, Lcom/jichi/ob/ui/SyncRunReport;->currentTarget:Lcom/jichi/ob/model/DataSource;

    sput-object v1, Lcom/jichi/ob/ui/SyncRunReport;->lastDownloadDetail:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized beginRecord(Lcom/jichi/ob/model/ActivityRecord;)V
    .locals 1

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/jichi/ob/ui/SyncRunReport;->currentRecord:Lcom/jichi/ob/model/ActivityRecord;

    const/4 p0, 0x0

    sput-object p0, Lcom/jichi/ob/ui/SyncRunReport;->currentTarget:Lcom/jichi/ob/model/DataSource;

    sput-object p0, Lcom/jichi/ob/ui/SyncRunReport;->lastDownloadDetail:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized beginTarget(Lcom/jichi/ob/model/DataSource;)V
    .locals 1

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/jichi/ob/ui/SyncRunReport;->currentTarget:Lcom/jichi/ob/model/DataSource;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static classify(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\u672a\u77e5"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\u8d85\u65f6"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d8

    const-string v1, "timeout"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d8

    const-string v1, "timed out"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_1d8

    :cond_25
    const-string v1, "401"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "403"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "\u767b\u5f55"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "token"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "\u8ba4\u8bc1"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "\u51ed\u8bc1"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "\u672a\u767b\u5f55"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "expired"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "unauthorized"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d5

    const-string v1, "forbidden"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    goto/16 :goto_1d5

    :cond_77
    const-string v1, "\u98ce\u63a7"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const-string v1, "\u51b7\u5374"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const-string v1, "\u9650\u6d41"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const-string v1, "429"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const-string v1, "\u4eba\u673a"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const-string v1, "\u9891\u7e41"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    goto/16 :goto_1d2

    :cond_a9
    const-string v1, "\u4e0d\u652f\u6301"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cf

    const-string v1, "\u672a\u5f00\u653e"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cf

    const-string v1, "\u4e0d\u53ef\u7528"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c3

    goto/16 :goto_1cf

    :cond_c3
    const-string v1, "\u89e3\u6790"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cc

    const-string v1, "\u6587\u4ef6\u6570\u636e\u65e0\u6548"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cc

    const-string v1, "\u683c\u5f0f"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cc

    const-string v1, "invalid"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cc

    const-string v1, "magic"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1cc

    const-string v1, "fit"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    goto/16 :goto_1cc

    :cond_f5
    const-string v1, "\u5df2\u5b58\u5728"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c9

    const-string v1, "\u91cd\u590d"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c9

    const-string v1, "duplicate"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    goto/16 :goto_1c9

    :cond_10f
    const-string v1, "\u78c1\u76d8"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, "\u5b58\u50a8"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, "\u7a7a\u95f4"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, "enospc"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, "write failed"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, "\u5199\u5165"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_141

    goto/16 :goto_1c6

    :cond_141
    const-string v1, "500"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c3

    const-string v1, "502"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c3

    const-string v1, "503"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c3

    const-string v1, "504"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c3

    const-string v1, "server"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16a

    goto :goto_1c3

    :cond_16a
    const-string v1, "\u8fde\u63a5"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "connect"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "\u7f51\u7edc"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "socket"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "ssl"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "handshake"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "unknownhost"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c0

    const-string v1, "eof"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ab

    goto :goto_1c0

    :cond_1ab
    const-string v1, "\u6743\u9650"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1bd

    const-string v1, "permission"

    invoke-static {p0, v1}, Lcom/jichi/ob/ui/SyncRunReport;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    return-object v0

    :cond_1bd
    :goto_1bd
    const-string p0, "\u6743\u9650\u4e0d\u8db3"

    return-object p0

    :cond_1c0
    :goto_1c0
    const-string p0, "\u8fde\u63a5\u5931\u8d25"

    return-object p0

    :cond_1c3
    :goto_1c3
    const-string p0, "\u5e73\u53f0\u670d\u52a1\u5f02\u5e38"

    return-object p0

    :cond_1c6
    :goto_1c6
    const-string p0, "\u78c1\u76d8/\u5b58\u50a8"

    return-object p0

    :cond_1c9
    :goto_1c9
    const-string p0, "\u91cd\u590d\u8bb0\u5f55"

    return-object p0

    :cond_1cc
    :goto_1cc
    const-string p0, "\u6587\u4ef6\u65e0\u6548/\u89e3\u6790\u5931\u8d25"

    return-object p0

    :cond_1cf
    :goto_1cf
    const-string p0, "\u5e73\u53f0\u4e0d\u652f\u6301\u4e0a\u4f20"

    return-object p0

    :cond_1d2
    :goto_1d2
    const-string p0, "\u98ce\u63a7/\u9650\u6d41"

    return-object p0

    :cond_1d5
    :goto_1d5
    const-string p0, "\u767b\u5f55\u6001\u5931\u6548"

    return-object p0

    :cond_1d8
    :goto_1d8
    const-string p0, "\u7f51\u7edc\u8d85\u65f6"

    return-object p0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->begin()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static clip(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_c

    return-object p0

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static colorFor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-string v0, "ok"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_e
    const-string v0, "skip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_1c
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception p0

    const p0, -0x777778

    return p0
.end method

.method static colorSecondary(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    return p0

    :catchall_6
    move-exception p0

    const p0, -0x777778

    return p0
.end method

.method private static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static declared-synchronized count(Ljava/lang/String;)I
    .locals 6

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    nop

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    :try_start_7
    sget-object v4, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_26

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    if-eqz v4, :cond_23

    if-eqz p0, :cond_23

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_28

    if-eqz v4, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_26
    monitor-exit v0

    return v3

    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized entryAt(I)[Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    if-ltz p0, :cond_19

    :try_start_5
    sget-object v1, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p0, v2, :cond_e

    goto :goto_19

    :cond_e
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_19
    :goto_19
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized finishRetry(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/jichi/ob/ui/SyncRunReport;->retrying:Z

    const/4 v2, -0x1

    sput v2, Lcom/jichi/ob/ui/SyncRunReport;->retryIndex:I

    if-nez p1, :cond_d

    const-string p1, "fail"

    :cond_d
    sput-object p1, Lcom/jichi/ob/ui/SyncRunReport;->retryStatus:Ljava/lang/String;

    if-nez p2, :cond_14

    const-string p1, ""

    goto :goto_15

    :cond_14
    move-object p1, p2

    :goto_15
    sput-object p1, Lcom/jichi/ob/ui/SyncRunReport;->retryMessage:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_5a

    :try_start_17
    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->entryAt(I)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_49

    sget-object p1, Lcom/jichi/ob/ui/SyncRunReport;->retryStatus:Ljava/lang/String;

    aput-object p1, p0, v1

    invoke-static {p2}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, p0, v1

    const-string p1, "fail"

    sget-object v1, Lcom/jichi/ob/ui/SyncRunReport;->retryStatus:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz p1, :cond_41

    invoke-static {p2}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {p2}, Lcom/jichi/ob/ui/SyncRunReport;->classify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    goto :goto_49

    :cond_41
    const-string p1, ""

    aput-object p1, p0, v2

    const-string p1, ""

    aput-object p1, p0, v1
    :try_end_49
    .catchall {:try_start_17 .. :try_end_49} :catchall_4a

    :cond_49
    :goto_49
    goto :goto_4b

    :catchall_4a
    move-exception p0

    :goto_4b
    :try_start_4b
    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->getActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of p1, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_58

    sget-object p1, Lcom/jichi/ob/ui/SyncRunReport;->INSTANCE:Lcom/jichi/ob/ui/SyncRunReport;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_5a

    :cond_58
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatSummary()Ljava/lang/String;
    .locals 11

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, ""
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_14f

    monitor-exit v0

    return-object v1

    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n\u2500\u2500 \u672c\u6b21\u8fd0\u884c\u660e\u7ec6 \u2500\u2500\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6210\u529f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok"

    invoke-static {v3}, Lcom/jichi/ob/ui/SyncRunReport;->count(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 \u8df3\u8fc7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "skip"

    invoke-static {v3}, Lcom/jichi/ob/ui/SyncRunReport;->count(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 \u5931\u8d25 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fail"

    invoke-static {v3}, Lcom/jichi/ob/ui/SyncRunReport;->count(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_52
    sget-object v6, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_12f

    const/16 v7, 0x50

    if-ge v5, v7, :cond_12f

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-eqz v6, :cond_12b

    aget-object v7, v6, v2

    if-nez v7, :cond_6c

    goto/16 :goto_12b

    :cond_6c
    add-int/lit8 v5, v5, 0x1

    const-string v8, "ok"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_9d

    const-string v7, "\u2705 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v9

    invoke-static {v9}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u2192 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v6, v6, v8

    invoke-static {v6}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_12b

    :cond_9d
    const-string v7, "skip"

    aget-object v10, v6, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x6

    if-eqz v7, :cond_de

    const-string v7, "\u23ed "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v9

    invoke-static {v9}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u2192 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v8

    invoke-static {v8}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff08"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v6, v6, v10

    invoke-static {v6}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff09\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12b

    :cond_de
    const-string v7, "\u274c "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v9

    invoke-static {v9}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " \u2192 "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v8

    invoke-static {v8}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "   \u539f\u56e0["

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v10

    invoke-static {v8}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v6, v6, v8

    invoke-static {v6}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xa0

    invoke-static {v6, v8}, Lcom/jichi/ob/ui/SyncRunReport;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12b
    :goto_12b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_52

    :cond_12f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_149

    const-string v2, "\u2026 \u5176\u4f59 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6761\u7565\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_14d
    .catchall {:try_start_f .. :try_end_14d} :catchall_14f

    monitor-exit v0

    return-object v1

    :catchall_14f
    move-exception v1

    :try_start_150
    const-string v1, ""
    :try_end_152
    .catchall {:try_start_150 .. :try_end_152} :catchall_154

    monitor-exit v0

    return-object v1

    :catchall_154
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/jichi/ob/ui/SyncRunReport;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static declared-synchronized isRetrying()Z
    .locals 2

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/jichi/ob/ui/SyncRunReport;->retrying:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized lastRetryIndex()I
    .locals 2

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/jichi/ob/ui/SyncRunReport;->retryIndex:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static newEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;)[Ljava/lang/Object;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    invoke-static {p4}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x5

    invoke-static {p5}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x6

    invoke-static {p6}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, v0, p1

    const/16 p0, 0x8

    aput-object p7, v0, p0

    const/16 p0, 0x9

    aput-object p9, v0, p0

    const/16 p0, 0xa

    aput-object p8, v0, p0

    if-nez p7, :cond_4d

    const-string p0, ""

    goto :goto_55

    :cond_4d
    invoke-virtual {p7}, Lcom/jichi/ob/model/ActivityRecord;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_55
    const/16 p1, 0xb

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static declared-synchronized note(Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sget-object v8, Lcom/jichi/ob/ui/SyncRunReport;->currentRecord:Lcom/jichi/ob/model/ActivityRecord;

    if-eqz v8, :cond_10a

    if-eqz p0, :cond_10a

    if-nez p1, :cond_d

    goto/16 :goto_10a

    :cond_d
    const-string v1, "dl"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sput-object p1, Lcom/jichi/ob/ui/SyncRunReport;->lastDownloadDetail:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_10c

    monitor-exit v0

    return-void

    :cond_19
    :try_start_19
    sget-boolean v1, Lcom/jichi/ob/ui/SyncRunReport;->retrying:Z
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_10c

    if-eqz v1, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v9

    const/4 v2, 0x0

    if-nez v9, :cond_2c

    move-object v3, v2

    goto :goto_30

    :cond_2c
    invoke-virtual {v9}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v3

    :goto_30
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3e

    if-eqz v3, :cond_3e

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v1, v4

    goto :goto_3f

    :cond_3e
    move v1, v5

    :goto_3f
    const-string v3, "\u4e0a\u4f20"

    invoke-static {p1, v3}, Lcom/jichi/ob/ui/SyncRunReport;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "\u91cd\u8bd5\u4e0a\u4f20"

    invoke-static {p1, v3}, Lcom/jichi/ob/ui/SyncRunReport;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "\u5df2\u4e0a\u4f20"

    invoke-static {p1, v3}, Lcom/jichi/ob/ui/SyncRunReport;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_5a

    :cond_58
    move v4, v5

    goto :goto_5b

    :cond_5a
    :goto_5a
    nop

    :goto_5b
    if-eqz v1, :cond_69

    const-string v3, "ok"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_10c

    if-eqz v3, :cond_69

    if-nez v4, :cond_69

    monitor-exit v0

    return-void

    :cond_69
    :try_start_69
    const-string v3, "ok"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const-string p2, "ok"

    const-string v3, ""

    move-object v7, v3

    goto :goto_9f

    :cond_77
    const-string v3, "skip"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    const-string p2, "skip"

    if-eqz v1, :cond_86

    const-string v3, "\u5df2\u540c\u6b65(\u8bb0\u5fc6)"

    goto :goto_88

    :cond_86
    const-string v3, "\u5e73\u53f0\u5df2\u5b58\u5728"

    :goto_88
    move-object v7, v3

    goto :goto_9f

    :cond_8a
    const-string v3, "pending"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_98

    const-string p2, "skip"

    const-string v3, "\u5e73\u53f0\u5904\u7406\u4e2d"

    move-object v7, v3

    goto :goto_9f

    :cond_98
    const-string p2, "fail"

    invoke-static {p1}, Lcom/jichi/ob/ui/SyncRunReport;->classify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_9f
    nop

    if-eqz v4, :cond_ad

    if-nez v1, :cond_a5

    move-object v2, p0

    :cond_a5
    if-nez v2, :cond_ab

    sget-object v2, Lcom/jichi/ob/ui/SyncRunReport;->currentTarget:Lcom/jichi/ob/model/DataSource;

    move-object v10, v2

    goto :goto_b2

    :cond_ab
    move-object v10, v2

    goto :goto_b2

    :cond_ad
    if-nez v1, :cond_b1

    move-object v10, p0

    goto :goto_b2

    :cond_b1
    move-object v10, v2

    :goto_b2
    if-eqz v10, :cond_be

    invoke-virtual {v10}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_db

    :cond_be
    if-eqz v1, :cond_cc

    const-string v2, "fail"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    const-string p0, "\uff08\u4e0b\u8f7d\u9636\u6bb5\uff09"

    move-object v4, p0

    goto :goto_db

    :cond_cc
    if-eqz v1, :cond_d2

    const-string p0, "\uff08\u540c\u6b65\u8bb0\u5fc6\uff09"

    move-object v4, p0

    goto :goto_db

    :cond_d2
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    :goto_db
    invoke-virtual {v8}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v9, :cond_e8

    const-string p0, ""

    goto :goto_f0

    :cond_e8
    invoke-virtual {v9}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_f0
    move-object v3, p0

    const-string p0, "fail"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fb

    move-object v6, p1

    goto :goto_fe

    :cond_fb
    const-string p0, ""

    move-object v6, p0

    :goto_fe
    sget-object p0, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    move-object v1, p2

    move-object v5, p1

    invoke-static/range {v1 .. v10}, Lcom/jichi/ob/ui/SyncRunReport;->newEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_109
    .catchall {:try_start_69 .. :try_end_109} :catchall_10c

    goto :goto_10d

    :cond_10a
    :goto_10a
    monitor-exit v0

    return-void

    :catchall_10c
    move-exception p0

    :goto_10d
    monitor-exit v0

    return-void
.end method

.method public static openDialog(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p0, :cond_b

    const-string p0, "all"

    :cond_b
    invoke-static {v0, p0}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static prepareCacheFile(Lcom/jichi/ob/MainActivity;[BLcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-eqz p1, :cond_36

    if-nez p3, :cond_8

    goto :goto_36

    :cond_8
    :try_start_8
    invoke-static {p0, p1}, Lcom/jichi/ob/MainActivity;->access$isFit(Lcom/jichi/ob/MainActivity;[B)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "fit"

    goto :goto_13

    :cond_11
    const-string v1, "gpx"

    :goto_13
    sget-object v2, Lcom/jichi/ob/util/FileNameGenerator;->INSTANCE:Lcom/jichi/ob/util/FileNameGenerator;

    invoke-virtual {v2, p2, p3, v1}, Lcom/jichi/ob/util/FileNameGenerator;->generate(Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/ActivityRecord;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_34

    :try_start_27
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2f

    :try_start_2a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    nop

    return-object p3

    :catchall_2f
    move-exception p1

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    return-object v0

    :cond_36
    :goto_36
    return-object v0
.end method

.method public static declared-synchronized retry(I)V
    .locals 8

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->getActivity()Landroid/app/Activity;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_98

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    :try_start_b
    sget-boolean v2, Lcom/jichi/ob/ui/SyncRunReport;->retrying:Z

    if-eqz v2, :cond_16

    const-string p0, "\u540c\u6b65/\u91cd\u8bd5\u8fdb\u884c\u4e2d\uff0c\u8bf7\u7a0d\u5019"

    invoke-static {v1, p0}, Lcom/jichi/ob/ui/SyncRunReport;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_98

    monitor-exit v0

    return-void

    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/jichi/ob/ui/SyncRunReport;->entryAt(I)[Ljava/lang/Object;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_98

    if-nez v2, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    :try_start_1e
    const-string v3, "fail"

    const/4 v4, 0x0

    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string p0, "\u4ec5\u300c\u5931\u8d25\u300d\u8bb0\u5f55\u652f\u6301\u5355\u6761\u91cd\u8bd5"

    invoke-static {v1, p0}, Lcom/jichi/ob/ui/SyncRunReport;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_98

    monitor-exit v0

    return-void

    :cond_30
    const/16 v3, 0x8

    :try_start_32
    aget-object v3, v2, v3

    instance-of v5, v3, Lcom/jichi/ob/model/ActivityRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_3c

    check-cast v3, Lcom/jichi/ob/model/ActivityRecord;

    goto :goto_3d

    :cond_3c
    move-object v3, v6

    :goto_3d
    const/16 v5, 0xa

    aget-object v5, v2, v5

    instance-of v7, v5, Lcom/jichi/ob/model/DataSource;

    if-eqz v7, :cond_48

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    goto :goto_49

    :cond_48
    move-object v5, v6

    :goto_49
    const/16 v7, 0x9

    aget-object v2, v2, v7

    instance-of v7, v2, Lcom/jichi/ob/model/DataSource;

    if-eqz v7, :cond_54

    move-object v6, v2

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    :cond_54
    if-eqz v3, :cond_91

    if-nez v6, :cond_59

    goto :goto_91

    :cond_59
    instance-of v2, v1, Lcom/jichi/ob/MainActivity;
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_98

    if-nez v2, :cond_5f

    monitor-exit v0

    return-void

    :cond_5f
    const/4 v2, 0x1

    :try_start_60
    sput-boolean v2, Lcom/jichi/ob/ui/SyncRunReport;->retrying:Z

    sput p0, Lcom/jichi/ob/ui/SyncRunReport;->retryIndex:I

    const-string v2, ""

    sput-object v2, Lcom/jichi/ob/ui/SyncRunReport;->retryStatus:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/jichi/ob/ui/SyncRunReport;->retryMessage:Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_98

    :try_start_6c
    move-object v2, v1

    check-cast v2, Lcom/jichi/ob/MainActivity;

    invoke-static {v2, p0, v3, v5, v6}, Lcom/jichi/ob/ui/SyncRunRetry;->start(Lcom/jichi/ob/MainActivity;ILcom/jichi/ob/model/ActivityRecord;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/model/DataSource;)V
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_73

    goto :goto_8f

    :catchall_73
    move-exception p0

    :try_start_74
    sput-boolean v4, Lcom/jichi/ob/ui/SyncRunReport;->retrying:Z

    const/4 v2, -0x1

    sput v2, Lcom/jichi/ob/ui/SyncRunReport;->retryIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u8bd5\u542f\u52a8\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/jichi/ob/ui/SyncRunReport;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_74 .. :try_end_8f} :catchall_98

    :goto_8f
    monitor-exit v0

    return-void

    :cond_91
    :goto_91
    :try_start_91
    const-string p0, "\u8be5\u6761\u4e3a\u4e0b\u8f7d\u9636\u6bb5\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5f00\u59cb\u4e00\u6b21\u540c\u6b65"

    invoke-static {v1, p0}, Lcom/jichi/ob/ui/SyncRunReport;->toast(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_98

    monitor-exit v0

    return-void

    :catchall_98
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static safe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static declared-synchronized size()I
    .locals 2

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized snapshot()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/jichi/ob/ui/SyncRunReport;->ENTRIES:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_16

    if-nez p1, :cond_5

    goto :goto_16

    :cond_5
    :try_start_5
    const-class v0, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    :try_start_8
    sput-object p1, Lcom/jichi/ob/ui/SyncRunReport;->pendingToast:Ljava/lang/String;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_11

    :try_start_b
    sget-object p1, Lcom/jichi/ob/ui/SyncRunReport;->INSTANCE:Lcom/jichi/ob/ui/SyncRunReport;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    goto :goto_15

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p0

    :goto_15
    return-void

    :cond_16
    :goto_16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/jichi/ob/ui/SyncRunReport;->retry(I)V

    goto :goto_1e

    :cond_15
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jichi/ob/ui/SyncRunReport;->openDialog(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    :cond_1e
    :goto_1e
    goto :goto_20

    :catchall_1f
    move-exception p1

    :goto_20
    return-void
.end method

.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/jichi/ob/ui/SyncRunReport;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_60

    :try_start_7
    sget-object v2, Lcom/jichi/ob/ui/SyncRunReport;->pendingToast:Ljava/lang/String;

    const-string v3, ""

    sput-object v3, Lcom/jichi/ob/ui/SyncRunReport;->pendingToast:Ljava/lang/String;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_5d

    const/4 v1, 0x0

    if-eqz v2, :cond_21

    :try_start_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_21

    if-eqz v0, :cond_20

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_20
    return-void

    :cond_21
    instance-of v2, v0, Lcom/jichi/ob/MainActivity;

    if-nez v2, :cond_26

    return-void

    :cond_26
    move-object v2, v0

    check-cast v2, Lcom/jichi/ob/MainActivity;

    invoke-static {v2}, Lcom/jichi/ob/MainActivity;->access$getSyncFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/SyncFragment;

    move-result-object v3

    invoke-static {v2}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v2

    if-eqz v3, :cond_44

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/jichi/ob/util/PrefsManager;->getStatOk()I

    move-result v4

    invoke-virtual {v2}, Lcom/jichi/ob/util/PrefsManager;->getStatSkip()I

    move-result v5

    invoke-virtual {v2}, Lcom/jichi/ob/util/PrefsManager;->getStatFail()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/jichi/ob/ui/SyncFragment;->setStats(III)V

    :cond_44
    sget-object v2, Lcom/jichi/ob/ui/SyncRunReport;->retryMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_55

    sget-object v2, Lcom/jichi/ob/ui/SyncRunReport;->retryMessage:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_55
    const-string v0, ""

    sput-object v0, Lcom/jichi/ob/ui/SyncRunReport;->retryMessage:Ljava/lang/String;

    invoke-static {}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->reopen()V
    :try_end_5c
    .catchall {:try_start_11 .. :try_end_5c} :catchall_60

    goto :goto_61

    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    :goto_61
    return-void
.end method
