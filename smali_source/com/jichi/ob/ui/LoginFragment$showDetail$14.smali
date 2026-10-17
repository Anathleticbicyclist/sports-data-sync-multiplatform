.class final Lcom/jichi/ob/ui/LoginFragment$showDetail$14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginFragment;->showDetail(Lcom/jichi/ob/model/DataSource;)V
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
    value = "SMAP\nLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginFragment.kt\ncom/jichi/ob/ui/LoginFragment$showDetail$14\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,765:1\n1#2:766\n*E\n"
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
    c = "com.jichi.ob.ui.LoginFragment$showDetail$14"
    f = "LoginFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $act:Lcom/jichi/ob/MainActivity;

.field final synthetic $dlg:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/appcompat/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ds:Lcom/jichi/ob/model/DataSource;

.field final synthetic $tvLogs:Landroid/widget/TextView;

.field final synthetic $tvRecents:Landroid/widget/TextView;

.field final synthetic $tvStat:Landroid/widget/TextView;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/LoginFragment;


# direct methods
.method public static synthetic $r8$lambda$JZsJ12hEWVeExSuPMmMEd1gvwGY(Lcom/jichi/ob/util/ActivityCache$Entry;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->invokeSuspend$lambda$3$lambda$1(Lcom/jichi/ob/util/ActivityCache$Entry;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l4SuSUY-5kJF9Ikux8-qO3n6MZM(Lcom/jichi/ob/util/ActivityCache$PlatformStat;Lcom/jichi/ob/ui/LoginFragment;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->invokeSuspend$lambda$3(Lcom/jichi/ob/util/ActivityCache$PlatformStat;Lcom/jichi/ob/ui/LoginFragment;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nGUXOgjQRIWGt04TYY_FUfqLJe0(Lcom/jichi/ob/util/ActivityCache$PlatformLog;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->invokeSuspend$lambda$3$lambda$2(Lcom/jichi/ob/util/ActivityCache$PlatformLog;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/jichi/ob/ui/LoginFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/LoginFragment;",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/jichi/ob/MainActivity;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/appcompat/app/AlertDialog;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/LoginFragment$showDetail$14;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$ds:Lcom/jichi/ob/model/DataSource;

    iput-object p3, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$act:Lcom/jichi/ob/MainActivity;

    iput-object p4, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvStat:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvRecents:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvLogs:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$dlg:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3(Lcom/jichi/ob/util/ActivityCache$PlatformStat;Lcom/jichi/ob/ui/LoginFragment;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 10

    move-object/from16 v0, p7

    if-eqz p0, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getLastSync()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 592
    invoke-virtual {p1}, Lcom/jichi/ob/ui/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    .line 593
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getLastSync()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "\u4ece\u672a"

    .line 594
    :goto_0
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getOk()I

    move-result v1

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getSkip()I

    move-result v2

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformStat;->getFail()I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7d2f\u8ba1\uff1a\u2191"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u4e0b\u8f7d \u00b7 \u2193"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e0a\u4f20 \u00b7 \u2717"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " \u5931\u8d25\u3000\u6700\u540e\u540c\u6b65 "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 596
    :cond_1
    const-string/jumbo p0, "\u7d2f\u8ba1\uff1a\u6682\u65e0\u540c\u6b65\u8bb0\u5f55"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const-string p1, "\n"

    if-eqz p0, :cond_2

    const-string/jumbo p0, "\uff08\u6682\u65e0\u7f13\u5b58\u8bb0\u5f55\uff0c\u540c\u6b65\u540e\u81ea\u52a8\u5199\u5165\uff09"

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_2

    .line 600
    :cond_2
    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/jichi/ob/ui/LoginFragment$showDetail$14$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14$$ExternalSyntheticLambda0;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 599
    :goto_2
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "\uff08\u6682\u65e0\u65e5\u5fd7\uff09"

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_3

    .line 606
    :cond_3
    move-object/from16 v1, p6

    check-cast v1, Ljava/lang/Iterable;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v7, Lcom/jichi/ob/ui/LoginFragment$showDetail$14$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14$$ExternalSyntheticLambda1;-><init>()V

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 605
    :goto_3
    invoke-virtual {p5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_4
    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$1(Lcom/jichi/ob/util/ActivityCache$Entry;)Ljava/lang/CharSequence;
    .locals 5

    .line 601
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$Entry;->getStartTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const-string v2, ""

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$Entry;->getDistanceKm()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.1fkm"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 603
    :goto_0
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$Entry;->getTitle()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo p0, "\u672a\u547d\u540d\u6d3b\u52a8"

    :cond_1
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Lcom/jichi/ob/util/ActivityCache$PlatformLog;)Ljava/lang/CharSequence;
    .locals 5

    .line 607
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xc88

    const-string v4, ""

    if-eq v2, v3, :cond_5

    const/16 v3, 0xddc

    if-eq v2, v3, :cond_4

    const v3, 0x18965

    if-eq v2, v3, :cond_2

    const v3, 0x35e57f

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    const-string/jumbo v1, "\u23ed \u8df3\u8fc7"

    goto :goto_1

    .line 608
    :cond_2
    const-string v2, "err"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 609
    :cond_3
    const-string/jumbo v1, "\u274c \u5931\u8d25"

    goto :goto_1

    .line 608
    :cond_4
    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 609
    const-string/jumbo v1, "\u2705 \u4e0a\u4f20\u6210\u529f"

    goto :goto_1

    .line 608
    :cond_5
    const-string v2, "dl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    :goto_0
    move-object v1, v4

    goto :goto_1

    .line 609
    :cond_7
    const-string/jumbo v1, "\u2b07 \u4e0b\u8f7d"

    .line 611
    :goto_1
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getMsg()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/jichi/ob/util/ActivityCache$PlatformLog;->getMsg()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iget-object v2, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$ds:Lcom/jichi/ob/model/DataSource;

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$act:Lcom/jichi/ob/MainActivity;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvStat:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvRecents:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvLogs:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$dlg:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;-><init>(Lcom/jichi/ob/ui/LoginFragment;Lcom/jichi/ob/model/DataSource;Lcom/jichi/ob/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 584
    iget v0, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 585
    :try_start_0
    sget-object v0, Lcom/jichi/ob/util/ActivityCache;->Companion:Lcom/jichi/ob/util/ActivityCache$Companion;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    invoke-virtual {v1}, Lcom/jichi/ob/ui/LoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/ActivityCache$Companion;->get(Landroid/content/Context;)Lcom/jichi/ob/util/ActivityCache;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 586
    :try_start_1
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/util/ActivityCache;->getPlatformStat(Ljava/lang/String;)Lcom/jichi/ob/util/ActivityCache$PlatformStat;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    move-object v2, p1

    if-eqz v0, :cond_1

    .line 587
    :try_start_2
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/jichi/ob/util/ActivityCache;->getPlatformLogs(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    move-object v8, p1

    goto :goto_2

    :catch_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_3

    .line 588
    :try_start_3
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$ds:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getShortName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jichi/ob/util/ActivityCache;->queryByPlatform(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v6, p1

    goto :goto_4

    :catch_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 589
    :goto_4
    iget-object p1, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$act:Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->this$0:Lcom/jichi/ob/ui/LoginFragment;

    iget-object v4, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvStat:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvRecents:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$tvLogs:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/jichi/ob/ui/LoginFragment$showDetail$14;->$dlg:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v1, Lcom/jichi/ob/ui/LoginFragment$showDetail$14$$ExternalSyntheticLambda2;

    invoke-direct/range {v1 .. v9}, Lcom/jichi/ob/ui/LoginFragment$showDetail$14$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/util/ActivityCache$PlatformStat;Lcom/jichi/ob/ui/LoginFragment;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/List;Landroid/widget/TextView;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v1}, Lcom/jichi/ob/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 615
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 584
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
