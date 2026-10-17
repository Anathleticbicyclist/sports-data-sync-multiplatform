.class public final Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MergeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/MergeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MergeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMergeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergeFragment.kt\ncom/jichi/ob/ui/MergeFragment$MergeAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1823:1\n1#2:1824\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u0010\u0012\u000c\u0012\n0\u0002R\u00060\u0000R\u00020\u00030\u0001:\u0001\"B\u0015\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u0013\u001a\n0\u0002R\u00060\u0000R\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J \u0010\u0018\u001a\u00020\u00192\u000e\u0010\u001a\u001a\n0\u0002R\u00060\u0000R\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0017H\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020 H\u0002R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;",
        "Lcom/jichi/ob/ui/MergeFragment;",
        "records",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
        "<init>",
        "(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V",
        "getRecords",
        "()Ljava/util/List;",
        "fmt",
        "Ljava/text/SimpleDateFormat;",
        "dayFmt",
        "isoFmt",
        "parseTs",
        "",
        "s",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "getItemCount",
        "itemBg",
        "Landroid/graphics/drawable/GradientDrawable;",
        "selected",
        "",
        "isAnchor",
        "VH",
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
.field private final dayFmt:Ljava/text/SimpleDateFormat;

.field private final fmt:Ljava/text/SimpleDateFormat;

.field private final isoFmt:Ljava/text/SimpleDateFormat;

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method public static synthetic $r8$lambda$VXVhDkxlnuLAZbny6FBkSc-rSKo(Lcom/jichi/ob/ui/MergeFragment;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->onBindViewHolder$lambda$8(Lcom/jichi/ob/ui/MergeFragment;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "records"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1725
    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->records:Ljava/util/List;

    .line 1726
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "MM-dd HH:mm"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->fmt:Ljava/text/SimpleDateFormat;

    .line 1727
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy-MM-dd"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->dayFmt:Ljava/text/SimpleDateFormat;

    .line 1728
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->isoFmt:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private final itemBg(ZZ)Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 1810
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/16 v2, 0xe

    int-to-float v2, v2

    .line 1811
    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result v1

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const v1, -0x150b01

    .line 1812
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x2

    if-eqz p2, :cond_2

    int-to-float p1, v1

    .line 1815
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const p2, -0x3b3fe

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0

    :cond_2
    if-eqz p1, :cond_5

    int-to-float p1, v1

    .line 1816
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getSource$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/model/DataSource;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, ""

    :cond_4
    invoke-static {p2, v1}, Lcom/jichi/ob/ui/MergeFragment;->access$platformColor(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0

    :cond_5
    const/4 p1, 0x1

    int-to-float p1, p1

    .line 1817
    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const p2, -0x17110c

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-object v0
.end method

.method static synthetic itemBg$default(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;ZZILjava/lang/Object;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1809
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->itemBg(ZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static final onBindViewHolder$lambda$8(Lcom/jichi/ob/ui/MergeFragment;ILandroid/view/View;)V
    .locals 0

    .line 1804
    invoke-static {p0, p1}, Lcom/jichi/ob/ui/MergeFragment;->access$onItemClick(Lcom/jichi/ob/ui/MergeFragment;I)V

    return-void
.end method

.method private final parseTs(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    .line 1733
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 1734
    :cond_0
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->isoFmt:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide v0

    .line 1737
    :catch_0
    :try_start_1
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->isoFmt:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-wide v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1807
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 1725
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->records:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1725
    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->onBindViewHolder(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->records:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/ActivityRecord;

    .line 1786
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->parseTs(Ljava/lang/String;)J

    move-result-wide v1

    .line 1788
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getSource()Lcom/jichi/ob/model/DataSource;

    move-result-object v3

    sget-object v4, Lcom/jichi/ob/model/DataSource;->CODOON:Lcom/jichi/ob/model/DataSource;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getExtra()Ljava/lang/String;

    move-result-object v3

    const-string v4, "room"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\ud83c\udfe0"

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 1789
    :goto_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->getTvTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "\u672a\u547d\u540d\u8fd0\u52a8"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getTitle()Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1790
    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->dayFmt:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getStartTime()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1791
    :goto_2
    const-string v5, "--:--"

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->fmt:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v5

    .line 1792
    :goto_3
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getDuration()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getDuration()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Lcom/jichi/ob/ui/MergeFragment;->access$formatDuration(Lcom/jichi/ob/ui/MergeFragment;J)Ljava/lang/String;

    move-result-object v5

    .line 1793
    :cond_4
    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getDistance()D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    const/4 v3, 0x1

    if-lez v2, :cond_5

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/jichi/ob/model/ActivityRecord;->getDistance()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v6, "%.2f km"

    invoke-static {v2, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "--"

    .line 1794
    :goto_4
    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->getTvMeta()Landroid/widget/TextView;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u00b7 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getSelectedIndexes$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1796
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getRangeMode$p(Lcom/jichi/ob/ui/MergeFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getRangeAnchor$p(Lcom/jichi/ob/ui/MergeFragment;)I

    move-result v1

    if-ne p2, v1, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 1797
    :goto_5
    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->getTvCheck()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v3, :cond_7

    .line 1798
    const-string/jumbo v2, "\u2460"

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_7
    if-eqz v0, :cond_8

    .line 1799
    const-string/jumbo v2, "\u2611"

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_6

    .line 1800
    :cond_8
    const-string/jumbo v2, "\u25cb"

    check-cast v2, Ljava/lang/CharSequence;

    .line 1797
    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1802
    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->getTvCheck()Landroid/widget/TextView;

    move-result-object v1

    if-nez v0, :cond_a

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    sget v4, Lcom/jichi/ob/R$color;->text_secondary:I

    goto :goto_8

    :cond_a
    :goto_7
    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    sget v4, Lcom/jichi/ob/R$color;->primary:I

    :goto_8
    invoke-static {v2, v4}, Lcom/jichi/ob/ui/MergeFragment;->access$color(Lcom/jichi/ob/ui/MergeFragment;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1803
    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v0, v3}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->itemBg(ZZ)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1804
    invoke-virtual {p1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    new-instance v1, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/MergeFragment;I)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1725
    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;
    .locals 10

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1750
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/4 v0, 0x0

    .line 1751
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    .line 1752
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0xe

    int-to-float v1, v1

    .line 1753
    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/16 v4, 0xa

    int-to-float v4, v4

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result p2

    mul-float/2addr p2, v4

    float-to-int p2, p2

    invoke-virtual {v2, v3, v5, v1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 1754
    invoke-static {p0, v0, v0, p2, v1}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->itemBg$default(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;ZZILjava/lang/Object;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1755
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-direct {p2, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1758
    new-instance v3, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    .line 1759
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getSource$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/model/DataSource;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, ""

    :cond_1
    invoke-static {p2, v8}, Lcom/jichi/ob/ui/MergeFragment;->access$platformColor(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1760
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result v8

    mul-float/2addr v8, v4

    float-to-int v8, v8

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result v9

    mul-float/2addr v9, v4

    float-to-int v9, v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p2}, Lcom/jichi/ob/ui/MergeFragment;->access$getDp(Lcom/jichi/ob/ui/MergeFragment;)F

    move-result p2

    mul-float/2addr v4, p2

    float-to-int p2, v4

    invoke-virtual {v6, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1763
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1764
    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1765
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/high16 v5, 0x41600000    # 14.0f

    .line 1768
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1769
    sget v5, Lcom/jichi/ob/R$color;->text_primary:I

    invoke-static {v0, v5}, Lcom/jichi/ob/ui/MergeFragment;->access$color(Lcom/jichi/ob/ui/MergeFragment;I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1771
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/high16 v1, 0x41300000    # 11.0f

    .line 1772
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v1, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-static {v0, v1}, Lcom/jichi/ob/ui/MergeFragment;->access$color(Lcom/jichi/ob/ui/MergeFragment;I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1774
    move-object v0, v4

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v5

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1776
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1777
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1778
    sget v0, Lcom/jichi/ob/R$color;->primary:I

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$color(Lcom/jichi/ob/ui/MergeFragment;I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1780
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    check-cast p2, Landroid/view/View;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object p1, v6

    check-cast p1, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1781
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;-><init>(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0
.end method
