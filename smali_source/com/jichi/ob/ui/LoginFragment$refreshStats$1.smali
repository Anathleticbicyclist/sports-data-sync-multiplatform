.class final Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginFragment;->refreshStats$app_devRelease()V
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
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/jichi/ob/ui/LoginFragment$refreshStats$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,765:1\n1285#2,2:766\n1299#2,4:768\n1285#2,2:772\n1299#2,4:774\n216#3,2:778\n216#3,2:780\n*S KotlinDebug\n*F\n+ 1 LoginFragment.kt\ncom/jichi/ob/ui/LoginFragment$refreshStats$1\n*L\n337#1:766,2\n337#1:768,4\n341#1:772,2\n341#1:774,4\n345#1:778,2\n348#1:780,2\n*E\n"
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
    c = "com.jichi.ob.ui.LoginFragment$refreshStats$1"
    f = "LoginFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $act:Lcom/jichi/ob/MainActivity;

.field final synthetic $logged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method public static synthetic $r8$lambda$BsASbauHE7KuTm5sE4rVXckfrW8(Ljava/util/Map;Ljava/util/Map;Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->invokeSuspend$lambda$5(Ljava/util/Map;Ljava/util/Map;Lcom/jichi/ob/ui/LoginFragment;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginFragment;Ljava/util/List;Lcom/jichi/ob/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/LoginFragment;",
            "Ljava/util/List<",
            "+",
            "Lcom/jichi/ob/model/DataSource;",
            ">;",
            "Lcom/jichi/ob/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$logged:Ljava/util/List;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$act:Lcom/jichi/ob/MainActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$5(Ljava/util/Map;Ljava/util/Map;Lcom/jichi/ob/ui/LoginFragment;)V
    .locals 6

    .line 778
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/model/DataSource;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p2}, Lcom/jichi/ob/ui/LoginFragment;->access$getStatViews$p(Lcom/jichi/ob/ui/LoginFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getOk()I

    move-result v2

    invoke-virtual {v0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getSkip()I

    move-result v3

    invoke-virtual {v0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getFail()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2191"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u2193"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2717"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 780
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jichi/ob/model/DataSource;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ltz p1, :cond_2

    .line 349
    invoke-static {p2}, Lcom/jichi/ob/ui/LoginFragment;->access$getCountViews$p(Lcom/jichi/ob/ui/LoginFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u6761"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 352
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
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

    new-instance p1, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$logged:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$act:Lcom/jichi/ob/MainActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;-><init>(Lcom/jichi/ob/ui/LoginFragment;Ljava/util/List;Lcom/jichi/ob/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 335
    iget v0, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 336
    :try_start_0
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    invoke-virtual {v1}, Lcom/jichi/ob/ui/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$logged:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 766
    new-instance v2, Ljava/util/LinkedHashMap;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 768
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 769
    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    move-object v7, v4

    check-cast v7, Lcom/jichi/ob/model/DataSource;

    if-eqz v0, :cond_0

    .line 338
    :try_start_1
    invoke-virtual {v7}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jichi/ob/util/ActivityCache;->getPlatformStat(Ljava/lang/String;)Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_0
    move-object v7, p1

    .line 769
    :goto_2
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 771
    :cond_1
    check-cast v2, Ljava/util/Map;

    .line 341
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$logged:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 772
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 774
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 775
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    move-object v5, v3

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    const/4 v6, -0x1

    if-eqz v0, :cond_2

    .line 342
    :try_start_2
    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jichi/ob/util/ActivityCache;->count(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    .line 775
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 777
    :cond_3
    check-cast v1, Ljava/util/Map;

    .line 344
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->$act:Lcom/jichi/ob/MainActivity;

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    new-instance v3, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v1, v0}, Lcom/jichi/ob/ui/LoginFragment$refreshStats$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/jichi/ob/ui/LoginFragment;)V

    invoke-virtual {p1, v3}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 335
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
