.class public final Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MergeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0086\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "root",
        "Landroid/widget/LinearLayout;",
        "dot",
        "Landroid/view/View;",
        "tvTitle",
        "Landroid/widget/TextView;",
        "tvMeta",
        "tvCheck",
        "<init>",
        "(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V",
        "getRoot",
        "()Landroid/widget/LinearLayout;",
        "getDot",
        "()Landroid/view/View;",
        "getTvTitle",
        "()Landroid/widget/TextView;",
        "getTvMeta",
        "getTvCheck",
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
.field private final dot:Landroid/view/View;

.field private final root:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

.field private final tvCheck:Landroid/widget/TextView;

.field private final tvMeta:Landroid/widget/TextView;

.field private final tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dot"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tvTitle"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tvMeta"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tvCheck"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1741
    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->this$0:Lcom/jichi/ob/ui/MergeFragment$MergeAdapter;

    .line 1747
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1742
    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->root:Landroid/widget/LinearLayout;

    .line 1743
    iput-object p3, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->dot:Landroid/view/View;

    .line 1744
    iput-object p4, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->tvTitle:Landroid/widget/TextView;

    .line 1745
    iput-object p5, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->tvMeta:Landroid/widget/TextView;

    .line 1746
    iput-object p6, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->tvCheck:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getDot()Landroid/view/View;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->dot:Landroid/view/View;

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getTvCheck()Landroid/widget/TextView;
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->tvCheck:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvMeta()Landroid/widget/TextView;
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->tvMeta:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 1744
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$MergeAdapter$VH;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method
