.class public final Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecordCenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntryHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "card",
        "Landroid/widget/LinearLayout;",
        "row1",
        "row2",
        "<init>",
        "(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V",
        "getCard",
        "()Landroid/widget/LinearLayout;",
        "getRow1",
        "getRow2",
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
.field private final card:Landroid/widget/LinearLayout;

.field private final row1:Landroid/widget/LinearLayout;

.field private final row2:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "row1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "row2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->card:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->row1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->row2:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final getCard()Landroid/widget/LinearLayout;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->card:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getRow1()Landroid/widget/LinearLayout;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->row1:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getRow2()Landroid/widget/LinearLayout;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$EntryHolder;->row2:Landroid/widget/LinearLayout;

    return-object v0
.end method
