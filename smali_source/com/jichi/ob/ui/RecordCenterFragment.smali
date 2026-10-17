.class public final Lcom/jichi/ob/ui/RecordCenterFragment;
.super Landroidx/fragment/app/Fragment;
.source "RecordCenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/RecordCenterFragment$Companion;,
        Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;,
        Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,652:1\n1869#2,2:653\n1617#2,9:656\n1869#2:665\n1870#2:667\n1626#2:668\n1869#2,2:669\n1#3:655\n1#3:666\n*S KotlinDebug\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment\n*L\n239#1:653,2\n292#1:656,9\n292#1:665\n292#1:667\n292#1:668\n163#1:669,2\n292#1:666\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u0000 F2\u00020\u0001:\u0003EFGB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J&\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u001a\u00100\u001a\u0002012\u0006\u00102\u001a\u00020)2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00103\u001a\u000201H\u0002J\u000e\u00104\u001a\u0002012\u0006\u00105\u001a\u00020\u0019J\u0006\u00106\u001a\u000201J\u0010\u00107\u001a\u0002012\u0006\u00108\u001a\u00020\u001cH\u0016J\u0008\u00109\u001a\u000201H\u0002J\u0008\u0010:\u001a\u000201H\u0002J\u0018\u0010;\u001a\u00020\n2\u0006\u0010<\u001a\u00020\u00192\u0006\u0010=\u001a\u00020\u001cH\u0003J\u0008\u0010>\u001a\u000201H\u0003J\u0008\u0010?\u001a\u000201H\u0007J\u0008\u0010@\u001a\u000201H\u0002J\u001c\u0010A\u001a\u000e\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020C0B2\u0006\u0010D\u001a\u00020\u0005H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\u0008\u0012\u0004\u0012\u00020\u0019`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006H"
    }
    d2 = {
        "Lcom/jichi/ob/ui/RecordCenterFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "dpInt",
        "",
        "v",
        "rvRecords",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "tvEmpty",
        "Landroid/widget/TextView;",
        "tvStat",
        "dateChips",
        "Landroid/widget/LinearLayout;",
        "platformChips",
        "etSearch",
        "Landroid/widget/EditText;",
        "tvGroupByDate",
        "tvGroupByPlatform",
        "dateRanges",
        "",
        "Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;",
        "selectedRange",
        "selectedPlatforms",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "initPlatformFilterDone",
        "",
        "groupByPlatform",
        "keyword",
        "llFilterArea",
        "tvFilterArrow",
        "tvFilterSummary",
        "itemsAll",
        "",
        "",
        "visibleCount",
        "adapter",
        "Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "updateGroupTabs",
        "setSinglePlatformFilter",
        "shortName",
        "refresh",
        "onHiddenChanged",
        "hidden",
        "buildDateChips",
        "buildPlatformChips",
        "makeChip",
        "name",
        "selected",
        "updateFilterSummary",
        "reload",
        "loadMore",
        "rangeBounds",
        "Lkotlin/Pair;",
        "",
        "idx",
        "DateRange",
        "Companion",
        "RecordAdapter",
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


# static fields
.field public static final Companion:Lcom/jichi/ob/ui/RecordCenterFragment$Companion;


# instance fields
.field private adapter:Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;

.field private dateChips:Landroid/widget/LinearLayout;

.field private final dateRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;",
            ">;"
        }
    .end annotation
.end field

.field private etSearch:Landroid/widget/EditText;

.field private groupByPlatform:Z

.field private initPlatformFilterDone:Z

.field private itemsAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private keyword:Ljava/lang/String;

.field private llFilterArea:Landroid/widget/LinearLayout;

.field private platformChips:Landroid/widget/LinearLayout;

.field private rvRecords:Landroidx/recyclerview/widget/RecyclerView;

.field private final selectedPlatforms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRange:I

.field private tvEmpty:Landroid/widget/TextView;

.field private tvFilterArrow:Landroid/widget/TextView;

.field private tvFilterSummary:Landroid/widget/TextView;

.field private tvGroupByDate:Landroid/widget/TextView;

.field private tvGroupByPlatform:Landroid/widget/TextView;

.field private tvStat:Landroid/widget/TextView;

.field private visibleCount:I


# direct methods
.method public static synthetic $r8$lambda$3VQLwsyztlbY9XM2QhDr5IMKnV8(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->onViewCreated$lambda$0(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7NL8sJT-1Izu4oq2SYt09EsgCgM(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->onViewCreated$lambda$5(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DodLTgEhaAHTmrd5easwi_FRlGU(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->onViewCreated$lambda$4(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dmhkkGXdx2gXr-PGcCaOx7KY1GA(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->onViewCreated$lambda$3(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p01738BZTaqeHs0v7hvfX00aTFM(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->onViewCreated$lambda$6(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sO6m2Bt9R09r8lKBTyax7gw5BwQ(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->onViewCreated$lambda$1(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sROFwdhKTWmt5FTTItNdDhn3HPI(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildDateChips$lambda$7(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uRWiJQ8nh_VvlIlgMzjNvsfT6bg(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildPlatformChips$lambda$10(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/RecordCenterFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jichi/ob/ui/RecordCenterFragment;->Companion:Lcom/jichi/ob/ui/RecordCenterFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x5

    .line 56
    new-array v0, v0, [Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    const-string/jumbo v2, "\u4eca\u5929"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    const-string/jumbo v2, "\u8fd17\u5929"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    const-string/jumbo v2, "\u8fd130\u5929"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 57
    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    const-string/jumbo v2, "\u4eca\u5e74"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    const-string/jumbo v2, "\u5168\u90e8"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    .line 55
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->dateRanges:Ljava/util/List;

    .line 59
    iput v3, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedRange:I

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->keyword:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->itemsAll:Ljava/util/List;

    const/16 v0, 0x32

    .line 71
    iput v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->visibleCount:I

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->adapter:Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;

    return-object p0
.end method

.method public static final synthetic access$getGroupByPlatform$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    return p0
.end method

.method public static final synthetic access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->itemsAll:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getKeyword$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRvRecords$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->rvRecords:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic access$getSelectedPlatforms$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/HashSet;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic access$getSelectedRange$p(Lcom/jichi/ob/ui/RecordCenterFragment;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedRange:I

    return p0
.end method

.method public static final synthetic access$getTvEmpty$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvStat$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvStat:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getVisibleCount$p(Lcom/jichi/ob/ui/RecordCenterFragment;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->visibleCount:I

    return p0
.end method

.method public static final synthetic access$loadMore(Lcom/jichi/ob/ui/RecordCenterFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->loadMore()V

    return-void
.end method

.method public static final synthetic access$rangeBounds(Lcom/jichi/ob/ui/RecordCenterFragment;I)Lkotlin/Pair;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->rangeBounds(I)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setKeyword$p(Lcom/jichi/ob/ui/RecordCenterFragment;Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->keyword:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVisibleCount$p(Lcom/jichi/ob/ui/RecordCenterFragment;I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->visibleCount:I

    return-void
.end method

.method private final buildDateChips()V
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->dateChips:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_2

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 223
    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->dateRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    .line 224
    invoke-virtual {v2}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedRange:I

    invoke-virtual {v2}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;->getIdx()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/jichi/ob/ui/RecordCenterFragment;->makeChip(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v3

    .line 225
    new-instance v4, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v2}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda7;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static final buildDateChips$lambda$7(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;Landroid/view/View;)V
    .locals 0

    .line 226
    invoke-virtual {p1}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;->getIdx()I

    move-result p1

    iput p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedRange:I

    .line 227
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildDateChips()V

    .line 228
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    .line 229
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    return-void
.end method

.method private final buildPlatformChips()V
    .locals 10

    .line 236
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->platformChips:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 237
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    sget-object v1, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object v1

    .line 239
    iget-boolean v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->initPlatformFilterDone:Z

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 653
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jichi/ob/model/DataSource;

    .line 239
    iget-object v4, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 240
    iput-boolean v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->initPlatformFilterDone:Z

    .line 242
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 244
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    move v5, v4

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jichi/ob/model/DataSource;

    .line 247
    invoke-virtual {v6}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/jichi/ob/ui/RecordCenterFragment;->makeChip(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v7

    .line 248
    new-instance v8, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v6, v7}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v8, 0x6

    .line 262
    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment;->dpInt(I)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/jichi/ob/ui/RecordCenterFragment;->dpInt(I)I

    move-result v8

    invoke-virtual {v6, v4, v4, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    check-cast v7, Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 266
    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    .line 268
    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static final buildPlatformChips$lambda$10(Lcom/jichi/ob/ui/RecordCenterFragment;Lcom/jichi/ob/model/DataSource;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    .line 249
    iget-object p3, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 250
    iget-object p3, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 251
    const-string p1, "#EEEEEE"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 252
    const-string p1, "#4B5563"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p3, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    const-string p1, "#2B8CFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p1, -0x1

    .line 256
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    :goto_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    .line 259
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    return-void
.end method

.method private final dpInt(I)I
    .locals 1

    int-to-float p1, p1

    .line 43
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final loadMore()V
    .locals 3

    .line 352
    iget v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->visibleCount:I

    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->itemsAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    iget v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->visibleCount:I

    add-int/lit8 v0, v0, 0x32

    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->itemsAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->visibleCount:I

    .line 354
    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->adapter:Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->itemsAll:Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->setItems(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final makeChip(Ljava/lang/String;Z)Landroid/widget/TextView;
    .locals 4

    .line 273
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 274
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 275
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x11

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0x8

    .line 278
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->dpInt(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->dpInt(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->dpInt(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->dpInt(I)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 279
    :cond_0
    const-string p1, "#4B5563"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    .line 280
    const-string p1, "#2B8CFF"

    goto :goto_1

    :cond_1
    const-string p1, "#EEEEEE"

    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static final onViewCreated$lambda$0(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 2

    .line 142
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->llFilterArea:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    goto :goto_3

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 144
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object p0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvFilterArrow:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    const-string/jumbo p1, "\u25b4 \u6536\u8d77"

    goto :goto_2

    :cond_3
    const-string/jumbo p1, "\u25be \u5c55\u5f00"

    :goto_2
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->closeRecordCenter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 2

    .line 163
    sget-object p1, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 669
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    .line 163
    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildPlatformChips()V

    .line 165
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    .line 166
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 169
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildPlatformChips()V

    .line 171
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    .line 172
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    return-void
.end method

.method private static final onViewCreated$lambda$5(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 175
    iget-boolean p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateGroupTabs()V

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$6(Lcom/jichi/ob/ui/RecordCenterFragment;Landroid/view/View;)V
    .locals 0

    .line 176
    iget-boolean p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateGroupTabs()V

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    :cond_0
    return-void
.end method

.method private final rangeBounds(I)Lkotlin/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/32 v1, 0x5265c00

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    .line 360
    const-string v8, "null cannot be cast to non-null type java.util.Calendar"

    const/4 v9, 0x1

    if-eq p1, v9, :cond_2

    const/4 v10, 0x2

    if-eq p1, v10, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 376
    :cond_0
    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1, v9}, Ljava/util/Calendar;->set(II)V

    .line 377
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 378
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 379
    invoke-virtual {v0, v9, v9}, Ljava/util/Calendar;->add(II)V

    .line 380
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 371
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Calendar;

    .line 372
    invoke-virtual {p1, v6, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v5, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v4, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 373
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide v5, 0x95586c00L

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 366
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Calendar;

    .line 367
    invoke-virtual {p1, v6, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v5, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v4, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 368
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1ee62800

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 362
    :cond_3
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 363
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final updateFilterSummary()V
    .locals 13

    .line 286
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvFilterSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->dateRanges:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    invoke-virtual {v4}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;->getIdx()I

    move-result v4

    iget v5, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedRange:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    check-cast v2, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/jichi/ob/ui/RecordCenterFragment$DateRange;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v1, "\u5168\u90e8"

    .line 288
    :cond_4
    sget-object v2, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 290
    iget-object v4, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lt v4, v2, :cond_5

    const-string/jumbo v2, "\u5168\u90e8\u5e73\u53f0"

    goto/16 :goto_4

    .line 291
    :cond_5
    iget-object v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "\u65e0\u5e73\u53f0"

    goto/16 :goto_4

    .line 292
    :cond_6
    iget-object v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    check-cast v2, Ljava/lang/Iterable;

    .line 656
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 665
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 664
    check-cast v5, Ljava/lang/String;

    .line 292
    sget-object v6, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v6, v5}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_7

    .line 664
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    :cond_9
    check-cast v4, Ljava/util/List;

    .line 656
    check-cast v4, Ljava/lang/Iterable;

    const/4 v2, 0x3

    .line 293
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    const-string/jumbo v3, "\u3001"

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-le v4, v2, :cond_a

    iget-object v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " \u7b49"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\u4e2a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    const-string v2, ""

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateGroupTabs()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvGroupByDate:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    if-nez v2, :cond_0

    sget v2, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvGroupByPlatform:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->groupByPlatform:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget p3, Lcom/jichi/ob/R$layout;->fragment_record_center:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildDateChips()V

    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildPlatformChips()V

    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    sget p2, Lcom/jichi/ob/R$id;->rvRecords:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->rvRecords:Landroidx/recyclerview/widget/RecyclerView;

    .line 129
    sget p2, Lcom/jichi/ob/R$id;->tvEmpty:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvEmpty:Landroid/widget/TextView;

    .line 130
    sget p2, Lcom/jichi/ob/R$id;->tvRecordStat:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvStat:Landroid/widget/TextView;

    .line 131
    sget p2, Lcom/jichi/ob/R$id;->dateChips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->dateChips:Landroid/widget/LinearLayout;

    .line 132
    sget p2, Lcom/jichi/ob/R$id;->platformChips:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->platformChips:Landroid/widget/LinearLayout;

    .line 133
    sget p2, Lcom/jichi/ob/R$id;->etSearch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->etSearch:Landroid/widget/EditText;

    .line 134
    sget p2, Lcom/jichi/ob/R$id;->tvGroupByDate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvGroupByDate:Landroid/widget/TextView;

    .line 135
    sget p2, Lcom/jichi/ob/R$id;->tvGroupByPlatform:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvGroupByPlatform:Landroid/widget/TextView;

    .line 138
    sget p2, Lcom/jichi/ob/R$id;->llFilterArea:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->llFilterArea:Landroid/widget/LinearLayout;

    .line 139
    sget p2, Lcom/jichi/ob/R$id;->tvFilterArrow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvFilterArrow:Landroid/widget/TextView;

    .line 140
    sget p2, Lcom/jichi/ob/R$id;->tvFilterSummary:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvFilterSummary:Landroid/widget/TextView;

    .line 141
    sget p2, Lcom/jichi/ob/R$id;->llFilterToggle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    .line 149
    sget p2, Lcom/jichi/ob/R$id;->btnRecordClose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->etSearch:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$onViewCreated$3;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    :cond_2
    sget p2, Lcom/jichi/ob/R$id;->btnSelectAll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_3
    sget p2, Lcom/jichi/ob/R$id;->btnClearAll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    new-instance p2, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvGroupByDate:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_5
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->tvGroupByPlatform:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_6
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->rvRecords:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_7

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 179
    :cond_7
    new-instance p1, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->adapter:Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;

    .line 180
    iget-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->rvRecords:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_8

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->rvRecords:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_9

    new-instance p2, Lcom/jichi/ob/ui/RecordCenterFragment$onViewCreated$8;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/RecordCenterFragment$onViewCreated$8;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 189
    :cond_9
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateGroupTabs()V

    .line 190
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildDateChips()V

    .line 191
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildPlatformChips()V

    .line 192
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    return-void
.end method

.method public final refresh()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildDateChips()V

    .line 210
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->buildPlatformChips()V

    .line 211
    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->updateFilterSummary()V

    .line 212
    invoke-virtual {p0}, Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V

    return-void
.end method

.method public final reload()V
    .locals 7

    .line 300
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setSinglePlatformFilter(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "shortName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 203
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->selectedPlatforms:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment;->initPlatformFilterDone:Z

    return-void
.end method
