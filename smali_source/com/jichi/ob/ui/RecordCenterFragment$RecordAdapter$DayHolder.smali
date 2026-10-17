.class public final Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecordCenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DayHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "tv",
        "Landroid/widget/TextView;",
        "<init>",
        "(Landroid/widget/TextView;)V",
        "getTv",
        "()Landroid/widget/TextView;",
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
.field private final tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string/jumbo v0, "tv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;->tv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getTv()Landroid/widget/TextView;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter$DayHolder;->tv:Landroid/widget/TextView;

    return-object v0
.end method
