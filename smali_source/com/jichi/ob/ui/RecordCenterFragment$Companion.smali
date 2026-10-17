.class public final Lcom/jichi/ob/ui/RecordCenterFragment$Companion;
.super Ljava/lang/Object;
.source "RecordCenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/RecordCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordCenterFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordCenterFragment.kt\ncom/jichi/ob/ui/RecordCenterFragment$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,652:1\n1#2:653\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/jichi/ob/ui/RecordCenterFragment$Companion;",
        "",
        "<init>",
        "()V",
        "fullTimeFmt",
        "",
        "ms",
        "",
        "dayLabel",
        "platColorRes",
        "",
        "tag",
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/jichi/ob/ui/RecordCenterFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final dayLabel(J)Ljava/lang/String;
    .locals 7

    .line 95
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.util.Calendar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v4, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 101
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M\u6708d\u65e5 EEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-gtz v0, :cond_0

    .line 103
    const-string/jumbo p1, "\u4eca\u5929"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 104
    const-string/jumbo p1, "\u6628\u5929"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-gt v2, v0, :cond_2

    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 105
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy\u5e74M\u6708d\u65e5"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 96
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 108
    :catch_0
    const-string/jumbo p1, "\u672a\u77e5\u65e5\u671f"

    return-object p1
.end method

.method public final fullTimeFmt(J)Ljava/lang/String;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    .line 77
    const-string v1, ""

    if-gtz v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type java.util.Calendar"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Calendar;

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 81
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 82
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, p1, v7

    const-string v7, "format(...)"

    if-ltz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 83
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v8, 0x2

    .line 84
    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 87
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 88
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method public final platColorRes(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "cscn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "igp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 113
    :cond_0
    sget p1, Lcom/jichi/ob/R$color;->igp_green:I

    return p1

    .line 112
    :sswitch_2
    const-string v0, "icu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 117
    :cond_1
    sget p1, Lcom/jichi/ob/R$color;->intervals_icu_orange:I

    return p1

    .line 112
    :sswitch_3
    const-string v0, "gcn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v0, "zp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 118
    :cond_2
    sget p1, Lcom/jichi/ob/R$color;->zepp_blue:I

    return p1

    .line 112
    :sswitch_5
    const-string/jumbo v0, "zf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 116
    :cond_3
    sget p1, Lcom/jichi/ob/R$color;->zwift_purple:I

    return p1

    .line 112
    :sswitch_6
    const-string/jumbo v0, "xz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 113
    :cond_4
    sget p1, Lcom/jichi/ob/R$color;->xingzhe_blue:I

    return p1

    .line 112
    :sswitch_7
    const-string/jumbo v0, "wo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 115
    :cond_5
    sget p1, Lcom/jichi/ob/R$color;->wahoo_red:I

    return p1

    .line 112
    :sswitch_8
    const-string/jumbo v0, "su"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 118
    :cond_6
    sget p1, Lcom/jichi/ob/R$color;->suunto_blue:I

    return p1

    .line 112
    :sswitch_9
    const-string v0, "ob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 116
    :cond_7
    sget p1, Lcom/jichi/ob/R$color;->outbase_orange:I

    return p1

    .line 112
    :sswitch_a
    const-string v0, "mw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 116
    :cond_8
    sget p1, Lcom/jichi/ob/R$color;->mywhoosh_orange:I

    return p1

    .line 112
    :sswitch_b
    const-string v0, "mg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 113
    :cond_9
    sget p1, Lcom/jichi/ob/R$color;->magene_blue:I

    return p1

    .line 112
    :sswitch_c
    const-string v0, "kt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    .line 118
    :cond_a
    sget p1, Lcom/jichi/ob/R$color;->komoot_red:I

    return p1

    .line 112
    :sswitch_d
    const-string v0, "kp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    .line 117
    :cond_b
    sget p1, Lcom/jichi/ob/R$color;->keep_yellow:I

    return p1

    .line 112
    :sswitch_e
    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    .line 114
    :cond_c
    sget p1, Lcom/jichi/ob/R$color;->giant_blue:I

    return p1

    .line 112
    :sswitch_f
    const-string v0, "gm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 115
    :cond_d
    sget p1, Lcom/jichi/ob/R$color;->garmin_blue:I

    return p1

    .line 112
    :sswitch_10
    const-string v0, "cs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    .line 115
    :cond_e
    sget p1, Lcom/jichi/ob/R$color;->coros_red:I

    return p1

    .line 112
    :sswitch_11
    const-string v0, "cd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    .line 117
    :cond_f
    sget p1, Lcom/jichi/ob/R$color;->codoon_green:I

    return p1

    .line 112
    :sswitch_12
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    .line 114
    :cond_10
    sget p1, Lcom/jichi/ob/R$color;->bryton_red:I

    return p1

    .line 112
    :sswitch_13
    const-string v0, "bb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    .line 114
    :cond_11
    sget p1, Lcom/jichi/ob/R$color;->blackbird_green:I

    return p1

    .line 119
    :goto_0
    sget p1, Lcom/jichi/ob/R$color;->primary:I

    return p1

    :sswitch_data_0
    .sparse-switch
        0xc40 -> :sswitch_13
        0xc50 -> :sswitch_12
        0xc61 -> :sswitch_11
        0xc70 -> :sswitch_10
        0xce6 -> :sswitch_f
        0xced -> :sswitch_e
        0xd65 -> :sswitch_d
        0xd69 -> :sswitch_c
        0xd9a -> :sswitch_b
        0xdaa -> :sswitch_a
        0xdd3 -> :sswitch_9
        0xe62 -> :sswitch_8
        0xed8 -> :sswitch_7
        0xf02 -> :sswitch_6
        0xf2c -> :sswitch_5
        0xf36 -> :sswitch_4
        0x18f12 -> :sswitch_3
        0x1969b -> :sswitch_2
        0x19712 -> :sswitch_1
        0x2ebcdb -> :sswitch_0
    .end sparse-switch
.end method
