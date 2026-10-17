.class final Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment;->uploadMerge()V
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
    value = "SMAP\nMergeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergeFragment.kt\ncom/jichi/ob/ui/MergeFragment$uploadMerge$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1823:1\n1#2:1824\n*E\n"
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
    c = "com.jichi.ob.ui.MergeFragment$uploadMerge$1"
    f = "MergeFragment.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x69b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "ok",
        "fail",
        "main",
        "tag",
        "target",
        "cred",
        "record"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$5",
        "L$6",
        "L$7",
        "L$8"
    }
.end annotation


# instance fields
.field final synthetic $engine:Lcom/jichi/ob/api/UploadEngine;

.field final synthetic $file:Ljava/io/File;

.field final synthetic $result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method public static synthetic $r8$lambda$BQfMlmDHiQiQ-P8flVDmyhjijik(Lcom/jichi/ob/api/UploadEngine$UploadResult;Lkotlin/jvm/internal/Ref$IntRef;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->invokeSuspend$lambda$2(Lcom/jichi/ob/api/UploadEngine$UploadResult;Lkotlin/jvm/internal/Ref$IntRef;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zghD1WHHZehe32vt6spvZI1iHmA(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->invokeSuspend$lambda$2$lambda$1(Lcom/jichi/ob/MainActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Ljava/io/File;",
            "Lcom/jichi/ob/merge/TrackMerger$MergedResult;",
            "Lcom/jichi/ob/api/UploadEngine;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$file:Ljava/io/File;

    iput-object p3, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    iput-object p4, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$engine:Lcom/jichi/ob/api/UploadEngine;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$2(Lcom/jichi/ob/api/UploadEngine$UploadResult;Lkotlin/jvm/internal/Ref$IntRef;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const-string v3, "merged_"

    const-string/jumbo v4, "\ud83d\udce4 \u5408\u5e76\u4e0a\u4f20: "

    .line 1693
    invoke-virtual/range {p0 .. p0}, Lcom/jichi/ob/api/UploadEngine$UploadResult;->getSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1694
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1697
    :try_start_0
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v0

    .line 1698
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "\u5bfc\u51fa"

    .line 1699
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " \u5b57\u8282)"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1698
    invoke-virtual {v0, v2, v5, v4}, Lcom/jichi/ob/util/ActivityCache;->addPlatformLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/jichi/ob/util/ActivityCache$Entry;

    .line 1701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1702
    invoke-virtual/range {p3 .. p3}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v6

    .line 1703
    invoke-virtual/range {p5 .. p5}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getStartTime()J

    move-result-wide v7

    const/16 v3, 0x3e8

    int-to-long v9, v3

    mul-long/2addr v7, v9

    .line 1704
    const-string/jumbo v9, "\u5408\u5e76"

    .line 1705
    invoke-static/range {p4 .. p4}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 1706
    invoke-virtual/range {p5 .. p5}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDistanceKm()D

    move-result-wide v11

    .line 1707
    invoke-virtual/range {p5 .. p5}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDurationSec()J

    move-result-wide v13

    long-to-int v13, v13

    .line 1708
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v3, "getName(...)"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1709
    const-string v15, ""

    .line 1700
    invoke-direct/range {v4 .. v15}, Lcom/jichi/ob/util/ActivityCache$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;DILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Lcom/jichi/ob/util/ActivityCache;->upsert(Ljava/lang/String;Lcom/jichi/ob/util/ActivityCache$Entry;)V

    .line 1711
    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/MainActivity;)V

    invoke-virtual {v1, v0}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1712
    :cond_0
    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method

.method private static final invokeSuspend$lambda$2$lambda$1(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    .line 1711
    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->refreshLoginCardsIfAny$app_devRelease()V

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

    new-instance v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v2, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$file:Ljava/io/File;

    iget-object v3, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$engine:Lcom/jichi/ob/api/UploadEngine;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lcom/jichi/ob/api/UploadEngine;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1677
    iget v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->label:I

    const-string v4, "btnUploadMerge"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/model/ActivityRecord;

    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$7:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$6:Ljava/lang/Object;

    check-cast v3, Lcom/jichi/ob/model/DataSource;

    iget-object v7, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v7, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$4:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/jichi/ob/MainActivity;

    iget-object v9, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v9

    move-object v9, v3

    move-object/from16 v3, p1

    :goto_0
    move-object v13, v7

    move-object v7, v10

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1678
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 1679
    iget-object v8, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-virtual {v8}, Lcom/jichi/ob/ui/MergeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    instance-of v9, v8, Lcom/jichi/ob/MainActivity;

    if-eqz v9, :cond_2

    check-cast v8, Lcom/jichi/ob/MainActivity;

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_4

    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnUploadMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    move-object v6, v1

    :goto_2
    invoke-virtual {v6, v5}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1680
    :cond_4
    iget-object v9, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v9}, Lcom/jichi/ob/ui/MergeFragment;->access$getSelectedUploadTags$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/LinkedHashSet;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v9

    move-object v9, v7

    move-object v7, v10

    move-object v10, v3

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1681
    sget-object v11, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v11, v3}, Lcom/jichi/ob/model/DataSource$Companion;->fromShortName(Ljava/lang/String;)Lcom/jichi/ob/model/DataSource;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_3

    .line 1682
    :cond_5
    iget-object v11, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v11}, Lcom/jichi/ob/ui/MergeFragment;->access$getPrefs$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/util/PrefsManager;

    move-result-object v11

    if-nez v11, :cond_6

    const-string v11, "prefs"

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v11, 0x0

    :cond_6
    invoke-virtual {v11, v14}, Lcom/jichi/ob/util/PrefsManager;->getCredential(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_7

    goto :goto_3

    .line 1683
    :cond_7
    new-instance v16, Lcom/jichi/ob/model/ActivityRecord;

    .line 1685
    iget-object v11, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$file:Ljava/io/File;

    invoke-static {v11}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v18

    .line 1686
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v11, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v12, Ljava/util/Date;

    iget-object v13, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    invoke-virtual {v13}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getStartTime()J

    move-result-wide v19

    const/16 v13, 0x3e8

    int-to-long v5, v13

    mul-long v5, v5, v19

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1687
    iget-object v6, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    invoke-virtual {v6}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDistanceKm()D

    move-result-wide v20

    .line 1688
    iget-object v6, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    invoke-virtual {v6}, Lcom/jichi/ob/merge/TrackMerger$MergedResult;->getTotalDurationSec()J

    move-result-wide v11

    long-to-int v6, v11

    .line 1689
    iget-object v11, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v11}, Lcom/jichi/ob/ui/MergeFragment;->access$getSource$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/model/DataSource;

    move-result-object v11

    if-nez v11, :cond_8

    sget-object v11, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    :cond_8
    move-object/from16 v23, v11

    const/16 v28, 0x1c0

    const/16 v29, 0x0

    .line 1683
    const-string v17, "merged"

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v5

    move/from16 v22, v6

    invoke-direct/range {v16 .. v29}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1691
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;

    iget-object v13, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$engine:Lcom/jichi/ob/api/UploadEngine;

    iget-object v6, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$file:Ljava/io/File;

    const/16 v18, 0x0

    move-object/from16 v17, v16

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v18}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$r$1;-><init>(Lcom/jichi/ob/api/UploadEngine;Lcom/jichi/ob/model/DataSource;Ljava/lang/String;Ljava/io/File;Lcom/jichi/ob/model/ActivityRecord;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v17

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$3:Ljava/lang/Object;

    iput-object v7, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$4:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$5:Ljava/lang/Object;

    iput-object v14, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$6:Ljava/lang/Object;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$7:Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->L$8:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->label:I

    invoke-static {v5, v12, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    return-object v2

    :cond_9
    move-object v12, v9

    move-object v9, v14

    goto/16 :goto_0

    .line 1677
    :goto_4
    move-object v6, v3

    check-cast v6, Lcom/jichi/ob/api/UploadEngine$UploadResult;

    .line 1692
    iget-object v10, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$file:Ljava/io/File;

    iget-object v11, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->$result:Lcom/jichi/ob/merge/TrackMerger$MergedResult;

    new-instance v5, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$$ExternalSyntheticLambda1;

    invoke-direct/range {v5 .. v12}, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/api/UploadEngine$UploadResult;Lkotlin/jvm/internal/Ref$IntRef;Lcom/jichi/ob/MainActivity;Lcom/jichi/ob/model/DataSource;Ljava/io/File;Lcom/jichi/ob/merge/TrackMerger$MergedResult;Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-virtual {v8, v5}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v10, v7

    move-object v9, v12

    move-object v7, v13

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1715
    :cond_a
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnUploadMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_b
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 1716
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getBtnUploadMerge$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    const-string/jumbo v2, "\u5f00\u59cb\u4e0a\u4f20\uff08\u672a\u9009\u5e73\u53f0\u5219\u4ec5\u5b58\u672c\u5730\uff09"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v1}, Lcom/jichi/ob/ui/MergeFragment;->access$getTvMergeResultTitle$p(Lcom/jichi/ob/ui/MergeFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "tvMergeResultTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    move-object v6, v1

    :goto_5
    iget v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const-string v2, " \u6210\u529f / "

    if-nez v1, :cond_e

    const-string/jumbo v1, "\u2705 \u5408\u5e76+\u4e0a\u4f20\u5b8c\u6210"

    goto :goto_6

    :cond_e
    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v3, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u2705 \u5408\u5e76\u5b8c\u6210\uff08\u4e0a\u4f20 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u5931\u8d25\uff09"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v1, v0, Lcom/jichi/ob/ui/MergeFragment$uploadMerge$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget v3, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v3, :cond_f

    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5df2\u4e0a\u4f20 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u4e2a\u5e73\u53f0"

    goto :goto_7

    :cond_f
    iget v3, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u4e0a\u4f20\u5b8c\u6210\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5931\u8d25"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    .line 1719
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
