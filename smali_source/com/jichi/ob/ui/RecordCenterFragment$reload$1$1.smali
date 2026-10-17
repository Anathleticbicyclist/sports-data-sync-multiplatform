.class final Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecordCenterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$reload$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,652:1\n774#2:653\n865#2,2:654\n*S KotlinDebug\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$reload$1$1\n*L\n319#1:653\n319#1:654,2\n*E\n"
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
    c = "com.jichi.ob.ui.RecordCenterFragment$reload$1$1"
    f = "RecordCenterFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $totalAll:I

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/RecordCenterFragment;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/RecordCenterFragment;Ljava/util/List;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/RecordCenterFragment;",
            "Ljava/util/List<",
            "Lcom/jichi/ob/util/ActivityCache$Entry;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$all:Ljava/util/List;

    iput p3, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$totalAll:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;

    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$all:Ljava/util/List;

    iget v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$totalAll:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;Ljava/util/List;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 315
    iget v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->label:I

    if-nez v0, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 316
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 317
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getGroupByPlatform$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 318
    sget-object p1, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    .line 319
    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$all:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 653
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 654
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 319
    invoke-virtual {v4}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 654
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 655
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 320
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 326
    :cond_3
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$all:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 327
    sget-object v2, Lcom/jichi/ob/ui/RecordCenterFragment;->Companion:Lcom/jichi/ob/ui/RecordCenterFragment$Companion;

    invoke-virtual {v1}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/jichi/ob/ui/RecordCenterFragment$Companion;->dayLabel(J)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 329
    :cond_4
    iget-object v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v2}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 332
    :cond_5
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$setVisibleCount$p(Lcom/jichi/ob/ui/RecordCenterFragment;I)V

    .line 333
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getAdapter$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getVisibleCount$p(Lcom/jichi/ob/ui/RecordCenterFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/jichi/ob/ui/RecordCenterFragment$RecordAdapter;->setItems(Ljava/util/List;I)V

    .line 334
    :cond_6
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getGroupByPlatform$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string/jumbo p1, "\u6309\u5e73\u53f0"

    goto :goto_3

    :cond_7
    const-string/jumbo p1, "\u6309\u65e5\u671f"

    .line 335
    :goto_3
    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getTvStat$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget v1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$totalAll:I

    iget-object v2, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->$all:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5171 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u6761 \u00b7 \u7b5b\u9009 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\uff09"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getItemsAll$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_c

    .line 337
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getTvEmpty$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :cond_9
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getTvEmpty$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getKeyword$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 339
    const-string/jumbo v0, "\ud83d\udced \u6682\u65e0\u7f13\u5b58\u8bb0\u5f55\n\uff08\u53bb\u540c\u6b65\u9875\u5f00\u59cb\u540c\u6b65\uff0c\u8bb0\u5f55\u4f1a\u81ea\u52a8\u5199\u5165\u7f13\u5b58\u5e93\uff09"

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_4

    .line 340
    :cond_a
    const-string/jumbo v0, "\ud83d\udced \u6ca1\u6709\u5339\u914d\u7684\u8bb0\u5f55\n\uff08\u8bd5\u8bd5\u8c03\u6574\u65e5\u671f/\u5e73\u53f0\u7b5b\u9009\u6216\u6e05\u7a7a\u641c\u7d22\u8bcd\uff09"

    check-cast v0, Ljava/lang/CharSequence;

    .line 338
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_b
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getRvRecords$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_5

    .line 343
    :cond_c
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getTvEmpty$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :cond_d
    iget-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getRvRecords$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 346
    :cond_e
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 315
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
