.class final Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RecordCenterFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/RecordCenterFragment;->reload()V
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
    value = "SMAP\nRecordCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$reload$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,652:1\n1374#2:653\n1460#2,5:654\n774#2:659\n865#2,2:660\n1068#2:662\n774#2:664\n865#2,2:665\n1#3:663\n*S KotlinDebug\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$reload$1\n*L\n304#1:653\n304#1:654,5\n307#1:659\n307#1:660,2\n311#1:662\n313#1:664\n313#1:665,2\n*E\n"
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
    c = "com.jichi.ob.ui.RecordCenterFragment$reload$1"
    f = "RecordCenterFragment.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x13b
    }
    m = "invokeSuspend"
    n = {
        "db",
        "kw",
        "all",
        "start",
        "end",
        "totalAll",
        "totalFilter"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "J$0",
        "J$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/RecordCenterFragment;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/RecordCenterFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/RecordCenterFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;

    iget-object v0, p0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-direct {p1, v0, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 300
    iget v2, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v1, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/util/ActivityCache;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    sget-object v2, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v4, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-virtual {v4}, Lcom/jichi/ob/ui/RecordCenterFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v6

    .line 302
    iget-object v2, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v2}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getSelectedRange$p(Lcom/jichi/ob/ui/RecordCenterFragment;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$rangeBounds(Lcom/jichi/ob/ui/RecordCenterFragment;I)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 303
    iget-object v2, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v2}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getKeyword$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "getDefault(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "toLowerCase(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v7, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    invoke-static {v7}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getSelectedPlatforms$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/HashSet;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 653
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .line 654
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 655
    check-cast v7, Ljava/lang/String;

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_2

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v14, v10, v14

    if-nez v14, :cond_2

    .line 305
    invoke-virtual {v6, v7}, Lcom/jichi/ob/util/ActivityCache;->queryByPlatform(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    .line 306
    :cond_2
    invoke-virtual/range {v6 .. v11}, Lcom/jichi/ob/util/ActivityCache;->queryByDateRange(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v7

    :goto_1
    check-cast v7, Ljava/lang/Iterable;

    .line 656
    invoke-static {v12, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 658
    :cond_3
    check-cast v12, Ljava/util/List;

    .line 653
    check-cast v12, Ljava/lang/Iterable;

    .line 659
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 660
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 308
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    goto :goto_4

    .line 309
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/CharSequence;

    const/4 v15, 0x2

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    const/4 v2, 0x0

    const/4 v12, 0x0

    invoke-static {v14, v3, v12, v15, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 310
    sget-object v2, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/jichi/ob/util/ActivityCache$Entry;->getPlatform()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {v2, v3, v12, v15, v14}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    move-object/from16 v2, v18

    move-object/from16 v12, v19

    const/4 v3, 0x1

    goto :goto_2

    .line 660
    :cond_8
    :goto_4
    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move-object/from16 v18, v2

    const/4 v12, 0x0

    .line 661
    check-cast v7, Ljava/util/List;

    .line 659
    check-cast v7, Ljava/lang/Iterable;

    .line 662
    new-instance v2, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$invokeSuspend$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$invokeSuspend$$inlined$sortedByDescending$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 312
    sget-object v3, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v12

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jichi/ob/util/ActivityCache;->count(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_5

    .line 313
    :cond_a
    sget-object v3, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v3}, Lcom/jichi/ob/model/DataSource$Companion;->sourcePlatforms()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    iget-object v5, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    .line 664
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 665
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/jichi/ob/model/DataSource;

    .line 313
    invoke-static {v5}, Lcom/jichi/ob/ui/RecordCenterFragment;->access$getSelectedPlatforms$p(Lcom/jichi/ob/ui/RecordCenterFragment;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v14}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 665
    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 666
    :cond_c
    check-cast v7, Ljava/util/List;

    .line 664
    check-cast v7, Ljava/lang/Iterable;

    .line 314
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v15, v12

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/jichi/ob/util/ActivityCache;->count(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v15, v5

    goto :goto_7

    .line 315
    :cond_d
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;

    iget-object v7, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->this$0:Lcom/jichi/ob/ui/RecordCenterFragment;

    const/4 v14, 0x0

    invoke-direct {v5, v7, v2, v4, v14}, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1$1;-><init>(Lcom/jichi/ob/ui/RecordCenterFragment;Ljava/util/List;ILkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->L$0:Ljava/lang/Object;

    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->L$2:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->J$0:J

    iput-wide v10, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->J$1:J

    iput v4, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->I$0:I

    iput v15, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->I$1:I

    const/4 v2, 0x1

    iput v2, v0, Lcom/jichi/ob/ui/RecordCenterFragment$reload$1;->label:I

    invoke-static {v3, v5, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    return-object v1

    .line 347
    :cond_e
    :goto_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
