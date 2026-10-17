.class final Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevOAuth2Api.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/DevOAuth2Api;->fetchActivities(Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2$WhenMappings;
    }
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
    c = "com.jichi.ob.api.DevOAuth2Api$fetchActivities$2"
    f = "DevOAuth2Api.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x92,
        0x93
    }
    m = "invokeSuspend"
    n = {
        "c",
        "token",
        "c",
        "token"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $limit:I

.field final synthetic $skip:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/DevOAuth2Api;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/api/DevOAuth2Api;",
            "Lcom/jichi/ob/model/DataSource;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iput-object p2, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iput p3, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$skip:I

    iput p4, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$limit:I

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

    new-instance v0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;

    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget-object v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    iget v3, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$skip:I

    iget v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$limit:I

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;-><init>(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;IILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 141
    iget v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-static {p1, v1}, Lcom/jichi/ob/api/DevOAuth2Api;->access$confOrNull(Lcom/jichi/ob/api/DevOAuth2Api;Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/api/DevOAuth2Api$Companion$PlatformConf;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    invoke-static {v1}, Lcom/jichi/ob/api/DevOAuth2Api;->access$getPrefs$p(Lcom/jichi/ob/api/DevOAuth2Api;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v1

    iget-object v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1, v4}, Lcom/jichi/ob/util/PrefsManager;->getLabToken(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 145
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    sget-object v5, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_7

    if-eq v4, v2, :cond_5

    .line 148
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 147
    :cond_5
    iget-object v3, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$skip:I

    iget v5, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$limit:I

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->label:I

    invoke-static {v3, v1, v4, v5, v6}, Lcom/jichi/ob/api/DevOAuth2Api;->access$fetchFitbit(Lcom/jichi/ob/api/DevOAuth2Api;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 146
    :cond_7
    iget-object v2, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->this$0:Lcom/jichi/ob/api/DevOAuth2Api;

    iget v4, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$skip:I

    iget v5, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$limit:I

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->label:I

    invoke-static {v2, v1, v4, v5, v6}, Lcom/jichi/ob/api/DevOAuth2Api;->access$fetchStrava(Lcom/jichi/ob/api/DevOAuth2Api;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_1
    return-object v0

    :cond_8
    :goto_2
    check-cast p1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 151
    :goto_3
    iget-object v0, p0, Lcom/jichi/ob/api/DevOAuth2Api$fetchActivities$2;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v0}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fetch\u5f02\u5e38: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DevOAuth"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
