.class final Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecordCenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/RecordCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;,
        Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$RecordAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,652:1\n774#2:653\n865#2,2:654\n808#2,11:657\n1#3:656\n*S KotlinDebug\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$RecordAdapter\n*L\n468#1:653\n468#1:654,2\n636#1:657,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001c\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0016J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000fH\u0017J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "ctx",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "items",
        "",
        "",
        "setItems",
        "",
        "all",
        "",
        "count",
        "",
        "getItemCount",
        "getItemViewType",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "showDetail",
        "e",
        "Lcom/jichi/ob/util/ActivityCache$Entry;",
        "dpInt",
        "v",
        "DayHolder",
        "EntryHolder",
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
.field private final ctx:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$K3RF-MSag-wcQtSk-TqP3ytz8wk(Landroid/app/Dialog;Lcom/jichi/ob/util/ActivityCache$Entry;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$lambda$24(Landroid/app/Dialog;Lcom/jichi/ob/util/ActivityCache$Entry;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VpFsoALneKxW_QYIgpji41Ei6fg(Landroid/app/Dialog;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$lambda$27(Landroid/app/Dialog;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WjPC4DtBVBDGle3IuuM_q3XAQiY(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$lambda$27$lambda$26(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_asYgRAQ6gYhL5D0XnhLqc8o9e0(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$lambda$28(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcQ-DFyfFVkW85TtCW9MzhFJQ8g(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->onBindViewHolder$lambda$12(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    .line 391
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->items:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;)Landroid/content/Context;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method private final dpInt(I)I
    .locals 1

    int-to-float p1, p1

    .line 646
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private static final onBindViewHolder$lambda$12(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/view/View;)V
    .locals 0

    .line 512
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail(Lcom/jichi/ob/util/ActivityCache$Entry;)V

    return-void
.end method

.method private final showDetail(Lcom/jichi/ob/util/ActivityCache$Entry;)V
    .locals 13

    .line 519
    sget-object v0, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_1
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy\u5e74M\u6708d\u65e5 HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    const-string/jumbo v1, "\u672a\u77e5"

    .line 524
    :goto_0
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    const-string/jumbo v3, "\u2014"

    const-string v4, "format(...)"

    const/4 v5, 0x1

    if-lez v2, :cond_2

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, "%.2f km"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 525
    :goto_1
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v6

    const/4 v7, 0x2

    if-lez v6, :cond_4

    .line 526
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v3

    div-int/lit16 v3, v3, 0xe10

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v6

    rem-int/lit16 v6, v6, 0xe10

    div-int/lit8 v6, v6, 0x3c

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v8

    rem-int/lit8 v8, v8, 0x3c

    if-lez v3, :cond_3

    .line 527
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v3, v6, v8}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x3

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v6, "%d:%02d:%02d"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v6, "%d:%02d"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    :cond_4
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 531
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x14

    .line 532
    invoke-direct {p0, v6}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v8

    const/16 v9, 0x10

    invoke-direct {p0, v9}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v10

    invoke-direct {p0, v6}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-direct {p0, v9}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v9

    invoke-virtual {v4, v8, v10, v6, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 533
    sget v6, Lcom/jichi/ob/R$drawable;->bg_disclaimer_dialog:I

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 553
    const-string/jumbo v6, "\u5e73\u53f0"

    invoke-static {v4, p0, v6, v0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v0, "\u672a\u547d\u540d\u6d3b\u52a8"

    :cond_5
    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "\u6807\u9898"

    invoke-static {v4, p0, v6, v0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "\u65f6\u95f4"

    invoke-static {v4, p0, v0, v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v0, "\u8ddd\u79bb"

    invoke-static {v4, p0, v0, v2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v0, "\u65f6\u957f"

    invoke-static {v4, p0, v0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v7, v2}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "\u672a\u4e0b\u8f7d\u5230\u672c\u5730"

    :goto_3
    const-string/jumbo v1, "\u6587\u4ef6"

    invoke-static {v4, p0, v1, v0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 562
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xe

    .line 563
    invoke-direct {p0, v2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 565
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string/jumbo v3, "\u6253\u5f00\u6587\u4ef6"

    goto :goto_4

    :cond_7
    const-string/jumbo v3, "\u4e0b\u8f7d\u6587\u4ef6"

    :goto_4
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41500000    # 13.0f

    .line 569
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 570
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_8

    sget v7, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_5

    :cond_8
    sget v7, Lcom/jichi/ob/R$color;->log_success:I

    :goto_5
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v7, 0x11

    .line 572
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v8, 0xa

    .line 573
    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v10

    invoke-virtual {v2, v1, v9, v1, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 574
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 575
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    new-instance v9, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 578
    const-string/jumbo v12, "\u5220\u9664\u8bb0\u5f55"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 580
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 581
    sget v6, Lcom/jichi/ob/R$color;->log_error:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 582
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 583
    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v12

    invoke-virtual {v9, v1, v6, v1, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 584
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v12

    invoke-virtual {v6, v12, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    new-instance v6, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 587
    const-string/jumbo v12, "\u5173\u95ed"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 589
    const-string v3, "#4B5563"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    sget v3, Lcom/jichi/ob/R$color;->tag_bg_grey:I

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 591
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 592
    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v3

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v7

    invoke-virtual {v6, v1, v3, v1, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 593
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v7

    invoke-virtual {v3, v7, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v9

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v3, v6

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 598
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 599
    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 600
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_9

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    :cond_9
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3, v10}, Landroid/view/Window;->setLayout(II)V

    .line 603
    :cond_a
    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;Lcom/jichi/ob/util/ActivityCache$Entry;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    new-instance p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static final showDetail$lambda$24(Landroid/app/Dialog;Lcom/jichi/ob/util/ActivityCache$Entry;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Landroid/view/View;)V
    .locals 3

    .line 604
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 605
    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 p3, 0x0

    if-lez p0, :cond_1

    .line 606
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 609
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "*/*"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 611
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 612
    iget-object p0, p2, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 613
    :catch_0
    iget-object p0, p2, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    const-string/jumbo p1, "\u65e0\u6cd5\u6253\u5f00\u6587\u4ef6"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 614
    :cond_0
    iget-object p0, p2, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    const-string/jumbo p1, "\u672c\u5730\u6587\u4ef6\u5df2\u4e0d\u5b58\u5728\uff0c\u8bf7\u91cd\u65b0\u540c\u6b65"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 617
    :cond_1
    iget-object p0, p2, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    instance-of p2, p0, Landroidx/fragment/app/FragmentActivity;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    instance-of v1, p2, Lcom/jichi/ob/MainActivity;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/jichi/ob/MainActivity;

    :cond_3
    if-eqz v0, :cond_6

    .line 619
    sget-object p2, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {p1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    :cond_4
    const-string/jumbo p2, "\u5e73\u53f0"

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6b63\u5728\u4ece"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v1, "\u4e0b\u8f7d..."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 620
    invoke-virtual {v0, p1}, Lcom/jichi/ob/MainActivity;->downloadCacheEntry$app_devRelease(Lcom/jichi/ob/util/ActivityCache$Entry;)V

    return-void

    .line 621
    :cond_6
    const-string/jumbo p1, "\u65e0\u6cd5\u4e0b\u8f7d\uff1a\u9875\u9762\u672a\u5c31\u7eea"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final showDetail$lambda$27(Landroid/app/Dialog;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/view/View;)V
    .locals 2

    .line 625
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 626
    new-instance p0, Landroid/app/AlertDialog$Builder;

    iget-object p3, p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {p0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    const-string/jumbo p3, "\u5220\u9664\u8bb0\u5f55"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 628
    invoke-virtual {p2}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p3, "\u672a\u547d\u540d\u6d3b\u52a8"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u786e\u5b9a\u4ece\u7f13\u5b58\u5e93\u5220\u9664\u300c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string/jumbo v0, "\u300d\u5417\uff1f\n\u4ec5\u5220\u9664\u8bb0\u5f55\u4e2d\u5fc3\u7f13\u5b58\uff0c\u4e0d\u5f71\u54cd\u5404\u5e73\u53f0\u4e91\u7aef\u6570\u636e\u3002"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 629
    const-string/jumbo p3, "\u5220\u9664"

    check-cast p3, Ljava/lang/CharSequence;

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;)V

    invoke-virtual {p0, p3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 639
    const-string/jumbo p1, "\u53d6\u6d88"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 640
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showDetail$lambda$27$lambda$26(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 630
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p2, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$showDetail$3$2$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$showDetail$3$2$1;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 633
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    const-string/jumbo p2, "\u5df2\u5220\u9664\u7f13\u5b58\u8bb0\u5f55"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 635
    :try_start_0
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    instance-of p1, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    move-object p3, p0

    check-cast p3, Landroidx/fragment/app/FragmentActivity;

    :cond_0
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 636
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 635
    check-cast p0, Ljava/lang/Iterable;

    .line 657
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 666
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/jichi/ob/ui/RecordCenterFragment;

    if-eqz p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 636
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/jichi/ob/ui/RecordCenterFragment;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private static final showDetail$lambda$28(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 642
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final showDetail$row(Landroid/widget/LinearLayout;Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 536
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 537
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x4

    .line 538
    invoke-direct {p1, v2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v3

    invoke-direct {p1, v2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 539
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 540
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41500000    # 13.0f

    .line 541
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 542
    const-string v3, "#9CA3AF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x4c

    invoke-direct {p1, v4}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 545
    new-instance v2, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 546
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 548
    const-string p1, "#1F2937"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v5, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "#2B8CFF"

    const-string v3, "holder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v3, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->items:Ljava/util/List;

    move/from16 v4, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 438
    instance-of v4, v1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;

    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;->getTv()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u25aa "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 439
    :cond_0
    instance-of v4, v1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;

    if-eqz v4, :cond_b

    .line 440
    const-string v4, "null cannot be cast to non-null type com.jichi.ob.util.ActivityCache.Entry"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 441
    sget-object v4, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 442
    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v4

    .line 443
    :cond_2
    :try_start_0
    iget-object v5, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    sget-object v6, Lcom/jichi/ob/ui/RecordCenterFragment;->Companion:Lcom/jichi/ob/ui/RecordCenterFragment$Companion;

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jichi/ob/ui/RecordCenterFragment$Companion;->platColorRes(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget v2, Lcom/jichi/ob/R$color;->primary:I

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 445
    :goto_0
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const-string v7, ""

    const/4 v8, 0x1

    if-lez v6, :cond_3

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v9, "%.1fkm"

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "format(...)"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v6, v7

    .line 446
    :goto_1
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v7

    div-int/lit8 v7, v7, 0x3c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "min"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 448
    :cond_4
    sget-object v9, Lcom/jichi/ob/ui/RecordCenterFragment;->Companion:Lcom/jichi/ob/ui/RecordCenterFragment$Companion;

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/jichi/ob/ui/RecordCenterFragment$Companion;->fullTimeFmt(J)Ljava/lang/String;

    move-result-object v9

    .line 450
    check-cast v1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;

    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow1()Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 451
    new-instance v10, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v12, 0xa

    invoke-direct {v0, v12}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v13

    invoke-direct {v0, v12}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v14

    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x8

    .line 453
    invoke-direct {v0, v13}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v15, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 454
    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 456
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 457
    invoke-virtual {v11, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 455
    check-cast v11, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 460
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow1()Landroid/widget/LinearLayout;

    move-result-object v11

    check-cast v10, Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow1()Landroid/widget/LinearLayout;

    move-result-object v10

    new-instance v11, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v11, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 462
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41400000    # 12.0f

    .line 463
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v14, 0x0

    .line 464
    invoke-virtual {v11, v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 465
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    check-cast v11, Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, 0x2

    .line 468
    new-array v5, v5, [Ljava/lang/String;

    aput-object v6, v5, v15

    aput-object v7, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 653
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 654
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    .line 468
    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 654
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 655
    :cond_6
    check-cast v6, Ljava/util/List;

    .line 653
    move-object/from16 v16, v6

    check-cast v16, Ljava/lang/Iterable;

    .line 468
    const-string v5, " \u00b7 "

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/CharSequence;

    const/16 v23, 0x3e

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v24}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 469
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const v10, 0x800005

    const/4 v11, -0x2

    if-lez v6, :cond_7

    .line 470
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow1()Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v12, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 472
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 473
    const-string v4, "#6B7280"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 475
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v15, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    check-cast v12, Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    :cond_7
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getFilename()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 479
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow1()Landroid/widget/LinearLayout;

    move-result-object v4

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    const-string/jumbo v6, "\u5df2\u4e0b\u8f7d"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 481
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, -0x1

    .line 482
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 484
    invoke-direct {v0, v13}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v2

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v12

    invoke-direct {v0, v13}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v13

    invoke-direct {v0, v6}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-virtual {v5, v2, v12, v13, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 485
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x6

    .line 486
    invoke-direct {v0, v6}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-virtual {v2, v6, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 487
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    :cond_8
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow2()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 492
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow2()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v5, "\u672a\u547d\u540d\u6d3b\u52a8"

    :cond_9
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41700000    # 15.0f

    .line 494
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 495
    invoke-virtual {v4, v14, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 496
    const-string v5, "#1F2937"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 498
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v11, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 501
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 502
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getRow2()Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 503
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 504
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 505
    const-string v5, "#4B5563"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 507
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    .line 508
    invoke-direct {v0, v6}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-virtual {v5, v6, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 509
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    :cond_a
    invoke-virtual {v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->getCard()Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;Lcom/jichi/ob/util/ActivityCache$Entry;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 403
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    const-string p1, "#4B5563"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 405
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 406
    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/16 p1, 0x28

    .line 407
    invoke-virtual {p2, v2, p1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 408
    new-instance p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;

    invoke-direct {p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;-><init>(Landroid/widget/TextView;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 410
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 412
    sget v0, Lcom/jichi/ob/R$drawable;->bg_note_card:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 413
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 415
    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v7

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v8

    invoke-virtual {v0, v4, v6, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0xe

    .line 416
    invoke-direct {p0, v4}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v6

    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v7

    invoke-direct {p0, v4}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result v3

    invoke-virtual {p2, v6, v7, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 417
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 420
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 423
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 425
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 426
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 427
    invoke-direct {p0, v5}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->dpInt(I)I

    move-result p1

    invoke-virtual {v3, v2, p1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 429
    move-object p1, v3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    new-instance p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;

    invoke-direct {p1, p2, v0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public final setItems(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "all"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->items:Ljava/util/List;

    .line 395
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
