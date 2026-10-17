.class final Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment;->loadActivities(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.jichi.ob.ui.MergeFragment$loadActivities$1"
    f = "MergeFragment.kt"
    i = {}
    l = {
        0x3d4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $append:Z

.field final synthetic $btnMore:Landroid/widget/TextView;

.field final synthetic $src:Lcom/jichi/ob/model/DataSource;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Lcom/jichi/ob/model/DataSource;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Landroid/widget/TextView;",
            "Lcom/jichi/ob/model/DataSource;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$btnMore:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$src:Lcom/jichi/ob/model/DataSource;

    iput-boolean p4, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$append:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$btnMore:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$src:Lcom/jichi/ob/model/DataSource;

    iget-boolean v4, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$append:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/widget/TextView;Lcom/jichi/ob/model/DataSource;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 979
    iget v1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 980
    new-instance p1, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1$res$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$src:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p1, v1, v4, v3}, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1$res$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->label:I

    const-wide/16 v4, 0x61a8

    invoke-static {v4, v5, p1, v1}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 979
    :cond_2
    :goto_0
    check-cast p1, Lcom/jichi/ob/MainActivity$MergeFetchPage;

    .line 985
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jichi/ob/ui/MergeFragment;->access$setPageLoading$p(Lcom/jichi/ob/ui/MergeFragment;Z)V

    .line 986
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnMergeNext$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    const-string v4, "btnMergeNext"

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 987
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnMergeNext$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    const-string/jumbo v4, "\u4e0b\u4e00\u6b65\uff1a\u9009\u62e9\u8bb0\u5f55"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$btnMore:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 989
    :cond_5
    const-string/jumbo v0, "tvMergeHint"

    if-nez p1, :cond_7

    .line 990
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v3, p1

    :goto_1
    const-string/jumbo p1, "\u52a0\u8f7d\u8d85\u65f6\uff1a\u7f51\u7edc\u4e0d\u4f73\u6216\u5e73\u53f0\u54cd\u5e94\u6162"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo v0, "\u52a0\u8f7d\u8d85\u65f6\uff08\u7f51\u7edc\u6162\u6216\u5e73\u53f0\u54cd\u5e94\u6162\uff09\uff0c\u53ef\u91cd\u8bd5\uff1b\u4e5f\u53ef\u6539\u7528\u672c\u5730\u6587\u4ef6\u5408\u5e76/\u751f\u6210\u8d34\u7eb8"

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    .line 992
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 994
    :cond_7
    invoke-virtual {p1}, Lcom/jichi/ob/MainActivity$MergeFetchPage;->getRecords()Ljava/util/List;

    move-result-object v2

    .line 995
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_c

    .line 996
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1, v1}, Lcom/jichi/ob/ui/MergeFragment;->access$setListHasMore$p(Lcom/jichi/ob/ui/MergeFragment;Z)V

    .line 997
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$btnMore:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeHint$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v3, p1

    :goto_2
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$getFromDate$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "\u6240\u9009\u65e5\u671f\u8303\u56f4\u5185\u6ca1\u6709\u8bb0\u5f55"

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$src:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u672a\u83b7\u53d6\u5230 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u6d3b\u52a8\u8bb0\u5f55"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$append:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo v0, "\u672a\u83b7\u53d6\u5230\u6d3b\u52a8\u8bb0\u5f55\uff1a\u767b\u5f55\u6001\u53ef\u80fd\u5931\u6548\u6216\u8be5\u5e73\u53f0\u63a5\u53e3\u5f02\u5e38\uff1b\u4e5f\u53ef\u6539\u7528\u672c\u5730\u6587\u4ef6\u5408\u5e76/\u751f\u6210\u8d34\u7eb8"

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    .line 1000
    :cond_b
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$applyDateFilter(Lcom/jichi/ob/ui/MergeFragment;)V

    .line 1001
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1003
    :cond_c
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-boolean v3, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$append:Z

    if-eqz v3, :cond_d

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getAllRecords$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    goto :goto_4

    :cond_d
    move-object v3, v2

    :goto_4
    invoke-static {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->access$setAllRecords$p(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;)V

    .line 1004
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getPageSkip$p(Lcom/jichi/ob/ui/MergeFragment;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/jichi/ob/ui/MergeFragment;->access$setPageSkip$p(Lcom/jichi/ob/ui/MergeFragment;I)V

    .line 1005
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {p1}, Lcom/jichi/ob/MainActivity$MergeFetchPage;->getHasMore()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/jichi/ob/ui/MergeFragment;->access$setListHasMore$p(Lcom/jichi/ob/ui/MergeFragment;Z)V

    .line 1006
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$btnMore:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getListHasMore$p(Lcom/jichi/ob/ui/MergeFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v5, v1

    :cond_e
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    :cond_f
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$getSelectedIndexes$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->clear()V

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1, v1}, Lcom/jichi/ob/ui/MergeFragment;->access$setRangeMode$p(Lcom/jichi/ob/ui/MergeFragment;Z)V

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$setRangeAnchor$p(Lcom/jichi/ob/ui/MergeFragment;I)V

    .line 1008
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$applyDateFilter(Lcom/jichi/ob/ui/MergeFragment;)V

    .line 1009
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$refreshDateFilterViews(Lcom/jichi/ob/ui/MergeFragment;)V

    .line 1010
    iget-boolean p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->$append:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$loadActivities$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$showStep(Lcom/jichi/ob/ui/MergeFragment;I)V

    .line 1011
    :cond_10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
