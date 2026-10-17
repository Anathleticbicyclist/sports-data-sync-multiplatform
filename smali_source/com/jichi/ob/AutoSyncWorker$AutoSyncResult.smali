.class final Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;
.super Ljava/lang/Object;
.source "AutoSyncWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/AutoSyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AutoSyncResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u00c6\u0003J\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u00c6\u0003J\u000f\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u00c6\u0003Jk\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n2\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017\u00a8\u0006("
    }
    d2 = {
        "Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;",
        "",
        "synced",
        "",
        "skipped",
        "failed",
        "lastTitle",
        "",
        "detectedDate",
        "failedDetails",
        "",
        "successDetails",
        "skippedDetails",
        "<init>",
        "(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V",
        "getSynced",
        "()I",
        "getSkipped",
        "getFailed",
        "getLastTitle",
        "()Ljava/lang/String;",
        "getDetectedDate",
        "getFailedDetails",
        "()Ljava/util/List;",
        "getSuccessDetails",
        "getSkippedDetails",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final detectedDate:Ljava/lang/String;

.field private final failed:I

.field private final failedDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lastTitle:Ljava/lang/String;

.field private final skipped:I

.field private final skippedDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final successDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synced:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lastTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectedDate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedDetails"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "successDetails"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skippedDetails"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput p1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    iput p2, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    iput p3, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    .line 354
    iput-object p4, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    .line 355
    iput-object p6, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    .line 356
    iput-object p7, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    .line 357
    iput-object p8, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    .line 352
    invoke-direct/range {v2 .. v10}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;
    .locals 0

    and-int/lit8 p10, p9, 0x1

    if-eqz p10, :cond_0

    iget p1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    iget p2, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    iget p3, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    iget-object p4, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    iget-object p5, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    iget-object p6, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    iget-object p7, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    iget-object p8, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    :cond_7
    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p10}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->copy(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    return-object v0
.end method

.method public final copy(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;"
        }
    .end annotation

    const-string v0, "lastTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectedDate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedDetails"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "successDetails"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skippedDetails"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;

    iget v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    iget v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    iget v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    iget v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    iget-object v3, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    iget-object p1, p1, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDetectedDate()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getFailed()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    return v0
.end method

.method public final getFailedDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getLastTitle()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkipped()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    return v0
.end method

.method public final getSkippedDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getSuccessDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    return-object v0
.end method

.method public final getSynced()I
    .locals 1

    .line 353
    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->synced:I

    iget v1, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skipped:I

    iget v2, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failed:I

    iget-object v3, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->lastTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->detectedDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->failedDetails:Ljava/util/List;

    iget-object v6, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->successDetails:Ljava/util/List;

    iget-object v7, p0, Lcom/jichi/ob/AutoSyncWorker$AutoSyncResult;->skippedDetails:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "AutoSyncResult(synced="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", skipped="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detectedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failedDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", successDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skippedDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
