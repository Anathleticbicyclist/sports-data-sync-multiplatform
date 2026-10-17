.class final Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment;-><init>()V
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
    c = "com.jichi.ob.ui.MergeFragment$filePicker$1$1"
    f = "MergeFragment.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x337
    }
    m = "invokeSuspend"
    n = {
        "uri",
        "name"
    }
    s = {
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $bytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic $names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "[B>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$uris:Ljava/util/List;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iput-object p3, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$names:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$bytes:Ljava/util/ArrayList;

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

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$uris:Ljava/util/List;

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$names:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$bytes:Ljava/util/ArrayList;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;-><init>(Ljava/util/List;Lcom/jichi/ob/ui/MergeFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 818
    iget v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 819
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$uris:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 822
    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1, p1}, Lcom/jichi/ob/ui/MergeFragment;->access$queryDisplayName(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "file"

    .line 823
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1$b$1;

    iget-object v7, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-direct {v6, v7, p1, v2}, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1$b$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->label:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 818
    :cond_4
    :goto_1
    check-cast p1, [B

    if-nez p1, :cond_5

    .line 826
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$names:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$bytes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 827
    :cond_5
    array-length v5, p1

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-lt v5, v6, :cond_6

    const/16 v5, 0x8

    aget-byte v5, p1, v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_6

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_6

    const/16 v5, 0xa

    .line 828
    aget-byte v5, p1, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_6

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v7

    .line 827
    :goto_2
    new-instance v6, Ljava/lang/String;

    .line 829
    array-length v8, p1

    const/16 v9, 0x200

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, p1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 830
    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "<gpx"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-nez v5, :cond_7

    if-eqz v6, :cond_2

    .line 832
    :cond_7
    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$names:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$bytes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 834
    :cond_8
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$names:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo v0, "\u672a\u9009\u62e9\u5230 FIT/GPX \u6587\u4ef6"

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 835
    :cond_9
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$names:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$filePicker$1$1;->$bytes:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/jichi/ob/ui/MergeFragment;->access$processLocalFiles(Lcom/jichi/ob/ui/MergeFragment;Ljava/util/List;Ljava/util/List;)V

    .line 836
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
