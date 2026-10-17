.class public final Lcom/jichi/ob/model/UploadSupport$Companion;
.super Ljava/lang/Object;
.source "Activity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/model/UploadSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/model/UploadSupport$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/jichi/ob/model/UploadSupport$Companion;",
        "",
        "<init>",
        "()V",
        "fromDataSource",
        "Lcom/jichi/ob/model/UploadSupport;",
        "ds",
        "Lcom/jichi/ob/model/DataSource;",
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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/model/UploadSupport$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromDataSource(Lcom/jichi/ob/model/DataSource;)Lcom/jichi/ob/model/UploadSupport;
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/jichi/ob/model/UploadSupport$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 146
    :pswitch_0
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->IGPSPORT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 144
    :pswitch_1
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->CYCITY:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 143
    :pswitch_2
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->TRAININGPEAKS:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 142
    :pswitch_3
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->WITHINGS:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 141
    :pswitch_4
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->FITBIT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 140
    :pswitch_5
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->POLAR:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 139
    :pswitch_6
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->STRAVA:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 138
    :pswitch_7
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->TWO_BULU:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 137
    :pswitch_8
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->SUUNTO:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 136
    :pswitch_9
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->KOMOT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 135
    :pswitch_a
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->ZEPP:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 134
    :pswitch_b
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->CODOON:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 133
    :pswitch_c
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->KEEP:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 132
    :pswitch_d
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->INTERVALS_ICU:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 131
    :pswitch_e
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->ZWIFT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 130
    :pswitch_f
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->MYWHOOSH:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 129
    :pswitch_10
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->WAHOO:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 128
    :pswitch_11
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->COROS_INT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 127
    :pswitch_12
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->COROS_CN:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 126
    :pswitch_13
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->GARMIN_CN:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 125
    :pswitch_14
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->GARMIN_COM:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 124
    :pswitch_15
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->GIANT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 123
    :pswitch_16
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->BRYTON:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 122
    :pswitch_17
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->BLACKBIRD:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 121
    :pswitch_18
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->MAGENE:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 120
    :pswitch_19
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->XINGZHE:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 119
    :pswitch_1a
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->IGPSPORT_INT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 118
    :pswitch_1b
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->IGPSPORT:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    .line 117
    :pswitch_1c
    sget-object p1, Lcom/jichi/ob/model/UploadSupport;->OUTBASE:Lcom/jichi/ob/model/UploadSupport;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
