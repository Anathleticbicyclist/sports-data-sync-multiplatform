.class public final Lcom/jichi/ob/api/WorkoutSyncEngine;
.super Ljava/lang/Object;
.source "WorkoutSyncEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/api/WorkoutSyncEngine$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkoutSyncEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkoutSyncEngine.kt\ncom/jichi/ob/api/WorkoutSyncEngine\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,302:1\n1#2:303\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001+B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u00be\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00102\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00152\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00180\u00172\u001a\u0008\u0002\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00180\u001a2\u0014\u0008\u0002\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00180\u0017H\u0086@\u00a2\u0006\u0002\u0010\u001cJ8\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0012\u001a\u00020\u00102\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0007H\u0002J\"\u0010#\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002J\u0018\u0010&\u001a\u00020\u00052\u0006\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020\u0010H\u0002J\u0010\u0010\'\u001a\u00020\u00052\u0006\u0010$\u001a\u00020!H\u0002J\u001a\u0010(\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020!2\u0006\u0010\u0012\u001a\u00020\u0010H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020!H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020!H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/jichi/ob/api/WorkoutSyncEngine;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "CYCLING_TYPES",
        "",
        "syncWorkouts",
        "Lcom/jichi/ob/api/WorkoutSyncEngine$Result;",
        "igpToken",
        "intl",
        "",
        "brytonCookie",
        "icuKey",
        "daysAhead",
        "",
        "historyDays",
        "ftp",
        "dedupSet",
        "contentHashes",
        "",
        "onSynced",
        "Lkotlin/Function1;",
        "",
        "onHashChanged",
        "Lkotlin/Function2;",
        "log",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "buildWorkoutBody",
        "name",
        "description",
        "doc",
        "Lorg/json/JSONObject;",
        "existingIds",
        "mapStep",
        "step",
        "index",
        "stepName",
        "intensityClass",
        "mapPower",
        "mapHr",
        "mapCadence",
        "Result",
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


# static fields
.field private static final CYCLING_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

.field private static final TAG:Ljava/lang/String; = "WorkoutSync"


# direct methods
.method public static synthetic $r8$lambda$L3avXu-zHCRbV4sTTF3UrNGk22I(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$md9ZXqvXsloiDrdCIgjdPCZD3B4(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts$lambda$0(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pI53l8HGCFkZnaDp94pH0vzMm00(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts$lambda$2(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jichi/ob/api/WorkoutSyncEngine;

    invoke-direct {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine;-><init>()V

    sput-object v0, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    const/16 v0, 0xa

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Ride"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MountainBikeRide"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GravelRide"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "VirtualRide"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 27
    const-string v2, "EBikeRide"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EMountainBikeRide"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TrackRide"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Cyclocross"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 28
    const-string v2, "Handcycle"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Velomobile"

    aput-object v2, v0, v1

    .line 25
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/api/WorkoutSyncEngine;->CYCLING_TYPES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildWorkoutBody(Lcom/jichi/ob/api/WorkoutSyncEngine;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/util/Set;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/jichi/ob/api/WorkoutSyncEngine;->buildWorkoutBody(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCYCLING_TYPES$p()Ljava/util/Set;
    .locals 1

    .line 20
    sget-object v0, Lcom/jichi/ob/api/WorkoutSyncEngine;->CYCLING_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method private final buildWorkoutBody(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 162
    const-string/jumbo p5, "steps"

    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_0

    return-object v0

    .line 163
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 164
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 165
    invoke-virtual {p5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 166
    invoke-direct {p0, v5, v6, p4}, Lcom/jichi/ob/api/WorkoutSyncEngine;->mapStep(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-nez p4, :cond_4

    return-object v0

    .line 171
    :cond_4
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const/16 p5, 0x40

    .line 172
    invoke-static {p1, p5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p5, "title"

    invoke-virtual {p4, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 p1, 0x1f4

    .line 173
    invoke-static {p2, p1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "description"

    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string p1, "duration"

    invoke-virtual {p3, p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo p2, "totalTime"

    invoke-virtual {p4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo p1, "workoutType"

    const-string p2, "bike"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo p1, "sportBigType"

    const/4 p2, 0x1

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string p1, "allowDeletion"

    invoke-virtual {p4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo p1, "structure"

    invoke-virtual {p4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 181
    const-string p2, "data"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final intensityClass(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .line 241
    const-string/jumbo v0, "warmup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "WarmUp"

    if-eqz v2, :cond_0

    return-object v3

    .line 242
    :cond_0
    const-string v2, "cooldown"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "CoolDown"

    if-eqz v1, :cond_1

    return-object v4

    .line 243
    :cond_1
    const-string v1, "intensity"

    const-string v5, ""

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "optString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "rest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object v4

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v3

    :sswitch_3
    const-string v0, "recovery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 246
    :cond_3
    const-string p1, "Rest"

    return-object p1

    .line 247
    :cond_4
    :goto_0
    const-string p1, "Active"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x2fa1806b -> :sswitch_3
        -0x2f62ec20 -> :sswitch_2
        -0x208cf895 -> :sswitch_1
        0x355bd4 -> :sswitch_0
    .end sparse-switch
.end method

.method private final mapCadence(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    .line 287
    const-string v0, "cadence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 288
    :cond_0
    const-string/jumbo v1, "value"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 289
    const-string/jumbo v1, "start"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 290
    const-string v1, "end"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 291
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v4

    .line 292
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    move-wide v4, v1

    .line 293
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 294
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_4

    move-wide v6, v4

    .line 295
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v4, v6

    .line 296
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 297
    const-string/jumbo v0, "unit"

    const-string v1, "Cadence"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 298
    const-string v0, "minValue"

    double-to-int v1, v6

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 299
    const-string v0, "maxValue"

    double-to-int v1, v4

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private final mapHr(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    .line 271
    const-string v0, "heartrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 272
    :cond_0
    const-string/jumbo v1, "start"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 273
    const-string v1, "end"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 274
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 275
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, v1

    .line 276
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v6, v1

    .line 277
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 278
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_4

    move-wide v4, v6

    .line 279
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v6, v4

    .line 280
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 281
    const-string/jumbo v0, "unit"

    const-string v1, "HeartRate"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 282
    const-string v0, "minValue"

    double-to-int v1, v4

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 283
    const-string v0, "maxValue"

    double-to-int v1, v6

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private final mapPower(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return-object v0

    .line 254
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "_power"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 255
    :cond_1
    const-string/jumbo p1, "start"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 256
    const-string p1, "end"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 257
    const-string/jumbo p1, "value"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 258
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v1

    .line 259
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-wide v6, v1

    .line 260
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v0

    .line 261
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v4, v6

    .line 262
    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    move-wide v6, v4

    .line 263
    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 264
    const-string/jumbo v0, "unit"

    const-string v1, "Power"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    int-to-double v0, p2

    mul-double/2addr v4, v0

    const/16 p2, 0x64

    int-to-double v2, p2

    div-double/2addr v4, v2

    double-to-int p2, v4

    .line 265
    const-string v4, "minValue"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    mul-double/2addr v0, v6

    div-double/2addr v0, v2

    double-to-int p2, v0

    .line 266
    const-string v0, "maxValue"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private final mapStep(Lorg/json/JSONObject;II)Lorg/json/JSONObject;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 188
    const-string v3, "reps"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 189
    const-string/jumbo v5, "steps"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 190
    const-string/jumbo v8, "value"

    const-string/jumbo v9, "unit"

    const-string v10, "length"

    const-string v11, "false"

    const-string v12, "openDuration"

    const-string v13, "intensityClass"

    const-string/jumbo v14, "uuid"

    const-string v15, "name"

    const/16 v16, 0x0

    const-string/jumbo v7, "type"

    if-lez v3, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 191
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v18, v5

    .line 192
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object/from16 v19, v10

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_2

    move/from16 v20, v5

    .line 193
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    move-object/from16 v21, v6

    goto :goto_1

    :cond_0
    move-object/from16 v21, v6

    add-int/lit8 v6, v10, 0x1

    .line 194
    invoke-direct {v0, v5, v6, v2}, Lcom/jichi/ob/api/WorkoutSyncEngine;->mapStep(Lorg/json/JSONObject;II)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v20

    move-object/from16 v6, v21

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    return-object v16

    .line 197
    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 198
    const-string v5, "Repetition"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    sget-object v6, Lcom/jichi/ob/api/WorkoutSyncEngine;->INSTANCE:Lcom/jichi/ob/api/WorkoutSyncEngine;

    move/from16 v10, p2

    invoke-direct {v6, v1, v10}, Lcom/jichi/ob/api/WorkoutSyncEngine;->stepName(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v1, "Active"

    invoke-virtual {v2, v13, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    invoke-virtual {v2, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v18

    .line 204
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    :cond_4
    move-object v3, v10

    move/from16 v10, p2

    .line 208
    const-string/jumbo v4, "until_lap_press"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 209
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 210
    const-string v6, "Step"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    invoke-direct/range {p0 .. p2}, Lcom/jichi/ob/api/WorkoutSyncEngine;->stepName(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/api/WorkoutSyncEngine;->intensityClass(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 214
    const-string/jumbo v11, "true"

    :cond_5
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v4, :cond_7

    .line 217
    const-string v4, "duration"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_6

    return-object v16

    .line 219
    :cond_6
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "Second"

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    :cond_7
    invoke-direct {v0, v1, v2}, Lcom/jichi/ob/api/WorkoutSyncEngine;->mapPower(Lorg/json/JSONObject;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 224
    const-string v3, "intensityTarget"

    if-eqz v2, :cond_8

    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 226
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/api/WorkoutSyncEngine;->mapHr(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 227
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    :cond_9
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/jichi/ob/api/WorkoutSyncEngine;->mapCadence(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 230
    const-string v2, "cadenceTarget"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    return-object v5
.end method

.method private final stepName(Lorg/json/JSONObject;I)Ljava/lang/String;
    .locals 2

    .line 236
    const-string/jumbo v0, "text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "optString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 237
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 p2, 0x40

    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic syncWorkouts$default(Lcom/jichi/ob/api/WorkoutSyncEngine;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    .line 55
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v10, v1

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    .line 56
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v11, v1

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    .line 57
    new-instance v1, Lcom/jichi/ob/api/WorkoutSyncEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$$ExternalSyntheticLambda0;-><init>()V

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    .line 58
    new-instance v1, Lcom/jichi/ob/api/WorkoutSyncEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/jichi/ob/api/WorkoutSyncEngine$$ExternalSyntheticLambda1;-><init>()V

    move-object v13, v1

    goto :goto_6

    :cond_6
    move-object/from16 v13, p11

    :goto_6
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    .line 59
    new-instance v0, Lcom/jichi/ob/api/WorkoutSyncEngine$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/jichi/ob/api/WorkoutSyncEngine$$ExternalSyntheticLambda2;-><init>()V

    move-object v14, v0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p12

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v15, p13

    .line 47
    invoke-virtual/range {v2 .. v15}, Lcom/jichi/ob/api/WorkoutSyncEngine;->syncWorkouts(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final syncWorkouts$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final syncWorkouts$lambda$1(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final syncWorkouts$lambda$2(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final syncWorkouts(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/api/WorkoutSyncEngine$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;

    const/4 v14, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v13, p3

    move-object/from16 v5, p4

    move/from16 v3, p5

    move/from16 v2, p6

    move/from16 v10, p7

    move-object/from16 v9, p8

    move-object/from16 v8, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v4, p12

    invoke-direct/range {v1 .. v14}, Lcom/jichi/ob/api/WorkoutSyncEngine$syncWorkouts$5;-><init>(IILkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Set;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object/from16 v2, p13

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
