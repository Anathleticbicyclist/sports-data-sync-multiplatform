.class public final Lcom/jichi/ob/model/SyncTask$Companion;
.super Ljava/lang/Object;
.source "SyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/model/SyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyncTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyncTask.kt\ncom/jichi/ob/model/SyncTask$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1617#2,9:121\n1869#2:130\n1870#2:133\n1626#2:134\n1617#2,9:135\n1869#2:144\n1870#2:146\n1626#2:147\n1617#2,9:148\n1869#2:157\n1870#2:159\n1626#2:160\n1#3:131\n1#3:132\n1#3:145\n1#3:158\n*S KotlinDebug\n*F\n+ 1 SyncTask.kt\ncom/jichi/ob/model/SyncTask$Companion\n*L\n105#1:121,9\n105#1:130\n105#1:133\n105#1:134\n114#1:135,9\n114#1:144\n114#1:146\n114#1:147\n84#1:148,9\n84#1:157\n84#1:159\n84#1:160\n105#1:132\n114#1:145\n84#1:158\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/jichi/ob/model/SyncTask$Companion;",
        "",
        "<init>",
        "()V",
        "fromJson",
        "Lcom/jichi/ob/model/SyncTask;",
        "o",
        "Lorg/json/JSONObject;",
        "app_devRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/model/SyncTask$Companion;-><init>()V

    return-void
.end method

.method private static final fromJson$arr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 157
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 84
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/jichi/ob/model/SyncTask;
    .locals 32

    move-object/from16 v0, p1

    const-string v1, "o"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "optString(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v3, "name"

    const-string/jumbo v5, "\u672a\u547d\u540d\u4efb\u52a1"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v3, "sources"

    invoke-static {v0, v3}, Lcom/jichi/ob/model/SyncTask$Companion;->fromJson$arr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 90
    const-string/jumbo v3, "targets"

    invoke-static {v0, v3}, Lcom/jichi/ob/model/SyncTask$Companion;->fromJson$arr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 91
    const-string v3, "count"

    const/16 v8, 0xc8

    invoke-virtual {v0, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 92
    const-string/jumbo v3, "skip"

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 93
    const-string v10, "incremental"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 94
    const-string v12, "force"

    invoke-virtual {v0, v12, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 95
    const-string v13, "coordinateConvert"

    invoke-virtual {v0, v13, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 96
    const-string v14, "autoSync"

    invoke-virtual {v0, v14, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 97
    const-string v15, "autoIntervalSec"

    const/16 v11, 0x384

    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 98
    const-string/jumbo v15, "wellness"

    invoke-virtual {v0, v15, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 99
    const-string/jumbo v9, "wellnessDays"

    move/from16 v18, v3

    const/4 v3, 0x7

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 100
    const-string v3, "garminMasquerade"

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 101
    const-string v4, "garminCustomProduct"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v21, v3

    .line 102
    const-string/jumbo v3, "workoutHistoryDays"

    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 103
    const-string/jumbo v4, "workoutFutureDays"

    move/from16 v23, v3

    const/4 v3, 0x7

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 104
    const-string/jumbo v4, "workoutTargets"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    move/from16 v19, v3

    .line 105
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    move-object/from16 v24, v5

    const/4 v5, 0x0

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 130
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v25, v3

    check-cast v25, Lkotlin/collections/IntIterator;

    move-object/from16 v26, v3

    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    .line 105
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v25, v3

    check-cast v25, Ljava/lang/CharSequence;

    invoke-static/range {v25 .. v25}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    .line 129
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v3, v26

    goto :goto_0

    .line 134
    :cond_2
    check-cast v5, Ljava/util/List;

    goto :goto_2

    :cond_3
    move/from16 v19, v3

    move-object/from16 v24, v5

    .line 106
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 107
    :goto_2
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 108
    const-string v4, "lastRunTime"

    move-object/from16 v25, v5

    move-object/from16 v16, v6

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 109
    const-string v6, "lastRunOk"

    move/from16 v26, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-wide/from16 v27, v4

    .line 110
    const-string v4, "lastRunSkip"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 111
    const-string v5, "lastRunFail"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 112
    const-string v3, "lastRunDetail"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const-string v1, "recentRuns"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 144
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v17, v1

    check-cast v17, Lkotlin/collections/IntIterator;

    move-object/from16 p1, v1

    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 143
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v1, p1

    goto :goto_3

    .line 147
    :cond_5
    check-cast v3, Ljava/util/List;

    goto :goto_4

    .line 115
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_4
    move-object/from16 v29, v3

    .line 86
    new-instance v3, Lcom/jichi/ob/model/SyncTask;

    move/from16 v17, v14

    move v14, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v17

    move/from16 v17, v21

    move-object/from16 v21, v25

    move/from16 v25, v6

    move-object/from16 v6, v16

    move/from16 v16, v9

    move/from16 v9, v18

    move-object/from16 v18, v22

    move/from16 v22, v26

    move/from16 v26, v4

    move-object/from16 v4, v20

    move/from16 v20, v19

    move/from16 v19, v23

    move-wide/from16 v30, v27

    move-object/from16 v28, v2

    move/from16 v27, v5

    move-object/from16 v5, v24

    move-wide/from16 v23, v30

    invoke-direct/range {v3 .. v29}, Lcom/jichi/ob/model/SyncTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;IIZZZZIZIZLjava/lang/String;IILjava/util/List;ZJIIILjava/lang/String;Ljava/util/List;)V

    return-object v3
.end method
