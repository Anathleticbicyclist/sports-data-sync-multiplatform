.class final Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TwoBuluApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/TwoBuluApi;->fetchActivities(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lcom/jichi/ob/model/ActivityRecord;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwoBuluApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwoBuluApi.kt\ncom/jichi/ob/api/TwoBuluApi$fetchActivities$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1563#2:137\n1634#2,3:138\n*S KotlinDebug\n*F\n+ 1 TwoBuluApi.kt\ncom/jichi/ob/api/TwoBuluApi$fetchActivities$2\n*L\n109#1:137\n109#1:138,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/jichi/ob/model/ActivityRecord;",
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
    c = "com.jichi.ob.api.TwoBuluApi$fetchActivities$2"
    f = "TwoBuluApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $limit:I

.field final synthetic $skip:I

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/TwoBuluApi;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/TwoBuluApi;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/TwoBuluApi;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->this$0:Lcom/jichi/ob/api/TwoBuluApi;

    iput p2, p0, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->$skip:I

    iput p3, p0, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->$limit:I

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

    new-instance p1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;

    iget-object v0, p0, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->this$0:Lcom/jichi/ob/api/TwoBuluApi;

    iget v1, p0, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->$skip:I

    iget v2, p0, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->$limit:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;-><init>(Lcom/jichi/ob/api/TwoBuluApi;IILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/ActivityRecord;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 105
    iget v0, v1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->label:I

    if-nez v0, :cond_2

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    :try_start_0
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v2, v1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->this$0:Lcom/jichi/ob/api/TwoBuluApi;

    invoke-static {v2}, Lcom/jichi/ob/api/TwoBuluApi;->access$getCtx$p(Lcom/jichi/ob/api/TwoBuluApi;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v0

    .line 108
    sget-object v2, Lcom/jichi/ob/model/DataSource;->TWO_BULU:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jichi/ob/util/ActivityCache;->queryByPlatform(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/Iterable;

    iget v2, v1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->$skip:I

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget v2, v1, Lcom/jichi/ob/api/TwoBuluApi$fetchActivities$2;->$limit:I

    if-gtz v2, :cond_0

    const/16 v2, 0x32

    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 138
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 139
    check-cast v3, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 110
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 111
    const-string v7, "Asia/Shanghai"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 112
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v7, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "format(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDurationSec()I

    move-result v10

    sget-object v11, Lcom/jichi/ob/model/DataSource;->TWO_BULU:Lcom/jichi/ob/model/DataSource;

    .line 113
    invoke-virtual {v3}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v13

    .line 110
    new-instance v4, Lcom/jichi/ob/model/ActivityRecord;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x140

    const/16 v17, 0x0

    invoke-direct/range {v4 .. v17}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchActivities\u7f13\u5b58\u8bfb\u53d6\u5931\u8d25: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TwoBulu"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
