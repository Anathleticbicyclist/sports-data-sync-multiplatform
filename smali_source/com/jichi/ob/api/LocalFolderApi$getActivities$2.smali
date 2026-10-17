.class final Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalFolderApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/LocalFolderApi;->getActivities(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/jichi/ob/model/ActivityRecord;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
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
    c = "com.jichi.ob.api.LocalFolderApi$getActivities$2"
    f = "LocalFolderApi.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $folderUri:Ljava/lang/String;

.field final synthetic $limit:I

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/api/LocalFolderApi;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/jichi/ob/api/LocalFolderApi;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/jichi/ob/api/LocalFolderApi;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->$folderUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    iput p3, p0, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->$limit:I

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

    new-instance p1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;

    iget-object v0, p0, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->$folderUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    iget v2, p0, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->$limit:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;-><init>(Ljava/lang/String;Lcom/jichi/ob/api/LocalFolderApi;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    const-string/jumbo v0, "\u626b\u63cf\u5230 "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 29
    iget v2, v1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->label:I

    if-nez v2, :cond_7

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 32
    :try_start_0
    iget-object v3, v1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->$folderUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 33
    iget-object v4, v1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;

    invoke-static {v4}, Lcom/jichi/ob/api/LocalFolderApi;->access$getContext$p(Lcom/jichi/ob/api/LocalFolderApi;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 34
    invoke-static {v3}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v4, 0x5

    .line 38
    new-array v7, v4, [Ljava/lang/String;

    const-string v4, "_display_name"

    const/4 v11, 0x0

    aput-object v4, v7, v11

    .line 39
    const-string v4, "document_id"

    const/4 v12, 0x1

    aput-object v4, v7, v12

    .line 40
    const-string v4, "_size"

    const/4 v13, 0x2

    aput-object v4, v7, v13

    .line 41
    const-string v4, "last_modified"

    const/4 v14, 0x3

    aput-object v4, v7, v14

    .line 42
    const-string v4, "mime_type"

    const/4 v15, 0x4

    aput-object v4, v7, v15

    .line 43
    const-string v10, "last_modified DESC"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 37
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_6

    check-cast v4, Ljava/io/Closeable;

    .line 43
    iget v5, v1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->$limit:I

    iget-object v6, v1, Lcom/jichi/ob/api/LocalFolderApi$getActivities$2;->this$0:Lcom/jichi/ob/api/LocalFolderApi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v7, v4

    check-cast v7, Landroid/database/Cursor;

    .line 44
    const-string v8, "LocalFolderApi"

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " \u4e2a\u6587\u4ef6/\u6587\u4ef6\u5939"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move v8, v11

    .line 47
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_5

    if-ge v8, v5, :cond_5

    .line 48
    :try_start_2
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_1
    move-object/from16 v32, v0

    move-object/from16 v30, v4

    move/from16 v31, v5

    move v1, v11

    goto :goto_2

    .line 49
    :cond_0
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v30, v4

    move/from16 v31, v5

    .line 51
    :try_start_3
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 52
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v14

    if-le v14, v15, :cond_2

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 54
    :cond_2
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "toLowerCase(...)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v15, ".gpx"

    move-object/from16 v32, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v14, v15, v1, v13, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ".fit"

    invoke-static {v14, v15, v1, v13, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v1

    move-object/from16 v4, v30

    move/from16 v5, v31

    move-object/from16 v0, v32

    const/4 v12, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x4

    move-object/from16 v1, p0

    goto :goto_0

    .line 61
    :cond_4
    :goto_3
    invoke-static {v3, v10}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "toString(...)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v10, "."

    const/4 v14, 0x0

    invoke-static {v9, v10, v14, v13, v14}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 64
    invoke-static {v6, v4, v5}, Lcom/jichi/ob/api/LocalFolderApi;->access$formatTime(Lcom/jichi/ob/api/LocalFolderApi;J)Ljava/lang/String;

    move-result-object v19

    .line 66
    new-instance v16, Lcom/jichi/ob/model/ActivityRecord;

    .line 72
    sget-object v23, Lcom/jichi/ob/model/DataSource;->LOCAL_FOLDER:Lcom/jichi/ob/model/DataSource;

    .line 73
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u672c\u5730\u6587\u4ef6\u5939: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v28, 0x100

    const/16 v29, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v25, v4

    .line 66
    invoke-direct/range {v16 .. v29}, Lcom/jichi/ob/model/ActivityRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DILcom/jichi/ob/model/DataSource;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v30

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v30, v4

    goto :goto_4

    :cond_5
    move-object/from16 v30, v4

    .line 78
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v4, v30

    const/4 v14, 0x0

    .line 43
    :try_start_5
    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v2

    :catchall_2
    move-exception v0

    move-object/from16 v4, v30

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_4
    move-object v1, v0

    :goto_5
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_7
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_6
    return-object v2

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    .line 29
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
