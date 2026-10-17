.class final Lcom/jichi/ob/MainActivity$preloadAll$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->preloadAll()V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$preloadAll$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,4073:1\n774#2:4074\n865#2,2:4075\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/jichi/ob/MainActivity$preloadAll$1\n*L\n2004#1:4074\n2004#1:4075,2\n*E\n"
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
    c = "com.jichi.ob.MainActivity$preloadAll$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x7dd
    }
    m = "invokeSuspend"
    n = {
        "platforms",
        "okCount",
        "total",
        "ds"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$4"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$ExWl4RqEPjABOXZHf56G1Jrtp8c(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MainActivity$preloadAll$1;->invokeSuspend$lambda$2(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WNpQ2C2lhmrKes_VotZhTd9g2cc(Lcom/jichi/ob/MainActivity;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/MainActivity$preloadAll$1;->invokeSuspend$lambda$3(Lcom/jichi/ob/MainActivity;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYLKolJE6EuJkFZB_Y57PZsycYU(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/MainActivity$preloadAll$1;->invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/MainActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/MainActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/MainActivity$preloadAll$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/jichi/ob/MainActivity;)V
    .locals 2

    .line 2006
    check-cast p0, Landroid/content/Context;

    const-string/jumbo v0, "\u6682\u65e0\u5df2\u767b\u5f55\u5e73\u53f0"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/jichi/ob/model/DataSource;)Ljava/lang/CharSequence;
    .locals 0

    .line 2009
    invoke-virtual {p0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$3(Lcom/jichi/ob/MainActivity;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 3

    .line 2018
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u62c9\u53d6\u5b8c\u6210\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " \u4e2a\u5e73\u53f0\u5171 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u6761\u8bb0\u5f55"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    .line 2019
    :try_start_0
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LoginFragment;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "loginFragment"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p1

    :cond_0
    invoke-virtual {p2}, Lcom/jichi/ob/ui/LoginFragment;->updateStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    :catch_0
    :try_start_1
    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getRecordFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/RecordCenterFragment;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/jichi/ob/MainActivity;->access$getRecordFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/RecordCenterFragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "recordFragment"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    invoke-virtual {p1}, Lcom/jichi/ob/ui/RecordCenterFragment;->refresh()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
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

    new-instance p1, Lcom/jichi/ob/MainActivity$preloadAll$1;

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-direct {p1, v0, p2}, Lcom/jichi/ob/MainActivity$preloadAll$1;-><init>(Lcom/jichi/ob/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$preloadAll$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/MainActivity$preloadAll$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/MainActivity$preloadAll$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/MainActivity$preloadAll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2003
    iget v1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/jichi/ob/model/DataSource;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2004
    invoke-static {}, Lcom/jichi/ob/model/DataSource;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    .line 4074
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 4075
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    .line 2004
    sget-object v6, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    if-eq v5, v6, :cond_2

    invoke-static {v1}, Lcom/jichi/ob/MainActivity;->access$getPrefs$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, "prefs"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {v6, v5}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4075
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4076
    :cond_4
    check-cast v3, Ljava/util/List;

    .line 2005
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2006
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v0, Lcom/jichi/ob/MainActivity$preloadAll$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/jichi/ob/MainActivity$preloadAll$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2007
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2009
    :cond_5
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    const-string/jumbo v1, "\u3001"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v10, Lcom/jichi/ob/MainActivity$preloadAll$1$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lcom/jichi/ob/MainActivity$preloadAll$1$$ExternalSyntheticLambda1;-><init>()V

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\ud83d\udd04 \u624b\u52a8\u62c9\u53d6\u5168\u90e8\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2010
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 2011
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 2012
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, p1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/model/DataSource;

    .line 2013
    :try_start_1
    iget-object v6, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$3:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->L$4:Ljava/lang/Object;

    iput v2, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->label:I

    invoke-static {v6, p1, v7}, Lcom/jichi/ob/MainActivity;->access$preloadAllOf(Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/4 p1, -0x1

    :goto_3
    if-ltz p1, :cond_6

    .line 2014
    iget v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, v2

    iput v6, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v6, p1

    iput v6, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    .line 2016
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2705 \u62c9\u53d6\u5b8c\u6210\uff1a"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u4e2a\u5e73\u53f0\u5171 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6761"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/jichi/ob/MainActivity;->access$appendLog(Lcom/jichi/ob/MainActivity;Ljava/lang/String;)V

    .line 2017
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$preloadAll$1;->this$0:Lcom/jichi/ob/MainActivity;

    new-instance v0, Lcom/jichi/ob/MainActivity$preloadAll$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, v4, v3}, Lcom/jichi/ob/MainActivity$preloadAll$1$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/MainActivity;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2022
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
