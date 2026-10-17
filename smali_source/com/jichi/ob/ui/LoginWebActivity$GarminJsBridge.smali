.class public final Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;
.super Ljava/lang/Object;
.source "LoginWebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/ui/LoginWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GarminJsBridge"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;",
        "",
        "<init>",
        "(Lcom/jichi/ob/ui/LoginWebActivity;)V",
        "onTicket",
        "",
        "ticket",
        "",
        "onLoginError",
        "msg",
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


# instance fields
.field final synthetic this$0:Lcom/jichi/ob/ui/LoginWebActivity;


# direct methods
.method public static synthetic $r8$lambda$e8cS7OtjB1MWeXc1mSbbpE25CUE(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->onLoginError$lambda$2(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wohKv3fojhmB0e-vTmIiTE-UE2o()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->onLoginError$lambda$2$lambda$1()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/jichi/ob/ui/LoginWebActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1734
    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onLoginError$lambda$2(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V
    .locals 11

    .line 1758
    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$flushGarminDebugToPersist(Lcom/jichi/ob/ui/LoginWebActivity;)V

    const/16 v0, 0x12

    .line 1760
    :try_start_0
    new-instance v1, Lcom/jichi/ob/util/PrefsManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/jichi/ob/util/PrefsManager;->getPersistLogs()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1761
    :catch_0
    const-string v1, ""

    .line 1762
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1763
    sget-object v1, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v1}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1764
    :try_start_1
    sget-object v2, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/api/GarminApi$Companion;->getDebugLogs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, "\n"

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1763
    monitor-exit v1

    move-object v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_0
    move-object v5, v1

    .line 1768
    :goto_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "invalid username"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-nez v1, :cond_2

    const-string v1, "invalid password"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "incorrect password"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1772
    const-string v1, "invalid credentials"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u5bc6\u7801\u9519\u8bef"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u5bc6\u7801\u4e0d\u6b63\u786e"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "\u7528\u6237\u540d\u6216\u5bc6\u7801"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v1, v6

    .line 1773
    :goto_3
    const-string/jumbo v7, "two-step"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "two step"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "two factor"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1774
    const-string/jumbo v7, "verification code"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "security code"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "\u4e24\u6b65\u9a8c\u8bc1"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, " mfa"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v0, v7, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move v7, v2

    goto :goto_5

    :cond_4
    :goto_4
    move v7, v6

    .line 1775
    :goto_5
    const-string v8, "password"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "invalid"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "incorrect"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1776
    const-string/jumbo v8, "\u5bc6\u7801"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "\u65e0\u6548"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string/jumbo v8, "\u7528\u6237\u540d"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_6

    :cond_5
    move v8, v2

    goto :goto_7

    :cond_6
    :goto_6
    move v8, v6

    .line 1777
    :goto_7
    const-string/jumbo v9, "verification"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "\u9a8c\u8bc1\u7801"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "\u4e24\u6b65"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "mfa"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v0, v9, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_8

    :cond_7
    move v9, v2

    goto :goto_9

    :cond_8
    :goto_8
    move v9, v6

    :goto_9
    if-nez v1, :cond_a

    if-nez v7, :cond_9

    if-eqz v8, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    goto :goto_b

    :cond_a
    :goto_a
    move v1, v6

    :goto_b
    if-nez v7, :cond_c

    if-nez v1, :cond_b

    if-eqz v9, :cond_b

    goto :goto_c

    :cond_b
    move v7, v2

    goto :goto_d

    :cond_c
    :goto_c
    move v7, v6

    .line 1780
    :goto_d
    const-string v8, "429"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "rate limit"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "too many"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1781
    const-string/jumbo v8, "\u9891\u7e41"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "\u98ce\u63a7"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "\u9650\u6d41"

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v0, v8, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v2, v6

    :cond_e
    if-eqz v1, :cond_f

    .line 1783
    const-string/jumbo v0, "\u8d26\u53f7\u6216\u5bc6\u7801\u4e0d\u5339\u914d\uff1a\u8bf7\u68c0\u67e5\u90ae\u7bb1\u548c\u5bc6\u7801\u540e\u91cd\u8bd5\u3002\n\uff08\u4f73\u660e\u5bf9\u9519\u8bef\u5bc6\u7801\u654f\u611f\uff1a\u8f93\u9519\u4e00\u6b21\u5373\u53ef\u80fd\u89e6\u53d1\u98ce\u63a7\uff0c\u8bf7\u5148\u786e\u8ba4\u5bc6\u7801\u6b63\u786e\uff0c\u907f\u514d\u7ee7\u7eed\u5c1d\u8bd5\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\uff09"

    goto :goto_e

    :cond_f
    if-eqz v7, :cond_10

    .line 1784
    const-string/jumbo v0, "\u68c0\u6d4b\u5230\u4e24\u6b65\u9a8c\u8bc1\uff08\u77ed\u4fe1/\u90ae\u7bb1\u9a8c\u8bc1\u7801\uff09\uff1a\u8bf7\u5148\u5728\u4f73\u660e\u5b98\u7f51\u8d26\u53f7\u8bbe\u7f6e\u4e2d\u5173\u95ed\u4e24\u6b65\u9a8c\u8bc1\uff0c\u518d\u56de App \u767b\u5f55\u3002\n\u7ee7\u7eed\u5c1d\u8bd5\u4f1a\u89e6\u53d1\u98ce\u63a7\uff0c\u53ef\u80fd\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\u3002"

    goto :goto_e

    :cond_10
    if-eqz v2, :cond_11

    .line 1785
    const-string/jumbo v0, "\u8be5\u8d26\u53f7\u5df2\u89e6\u53d1\u4f73\u660e\u98ce\u63a7\u9650\u6d41\uff1a\u8bf7\u5148\u68c0\u67e5\u8d26\u53f7\u5bc6\u7801\u662f\u5426\u6b63\u786e\uff0c\u5e76\u7b49\u5f85\u51b7\u5374\u7ed3\u675f\u540e\u518d\u767b\u5f55\u3002\n\uff08\u51b7\u5374\u671f\u5185\u53cd\u590d\u5c1d\u8bd5\u4f1a\u5ef6\u957f\u5c01\u7981\uff0c\u53ef\u80fd\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\uff09"

    goto :goto_e

    .line 1786
    :cond_11
    const-string/jumbo v0, "\u767b\u5f55\u5931\u8d25\uff1a\u8bf7\u68c0\u67e5\u90ae\u7bb1\u5bc6\u7801\u662f\u5426\u6b63\u786e\u3002\n\uff08\u82e5\u63d0\u793a\u4e24\u6b65\u9a8c\u8bc1\uff0c\u8bf7\u5148\u5728\u4f73\u660e\u5b98\u7f51\u5173\u95ed\uff1b\u7ee7\u7eed\u5c1d\u8bd5\u4f1a\u89e6\u53d1\u98ce\u63a7\uff0c\u53ef\u80fd\u5bfc\u81f4 24H \u65e0\u6cd5\u767b\u5f55\uff09"

    .line 1788
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4f73\u660e\u9875\u9762\u63d0\u793a\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\n\u5982\u679c\u4e0d\u786e\u5b9a\u53ef\u4ee5\u5c06\u62a5\u9519\u65e5\u5fd7\u901a\u8fc7\u6296\u97f3\u53d1\u7ed9\u300c\u591a\u5403\u4e24\u53e3\u300d\u6392\u67e5\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1791
    invoke-static {p0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "garmin_cn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string/jumbo p1, "\u4e2d\u56fd"

    goto :goto_f

    :cond_12
    const-string/jumbo p1, "\u56fd\u9645"

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u4f73\u660e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1794
    new-instance v7, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    .line 1790
    invoke-static/range {v2 .. v7}, Lcom/jichi/ob/ui/LoginWebActivity;->access$showGarminResultDialog(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final onLoginError$lambda$2$lambda$1()Lkotlin/Unit;
    .locals 1

    .line 1795
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final onLoginError(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1748
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1749
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 1750
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_3

    goto :goto_1

    .line 1751
    :cond_3
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLastReportedLoginError$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1752
    :cond_4
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setLastReportedLoginError$p(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] \u4f73\u660e\u9875\u9762\u9519\u8bef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginWeb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->setEnableDebugLogs(Z)V

    .line 1755
    sget-object v0, Lcom/jichi/ob/api/GarminApi;->Companion:Lcom/jichi/ob/api/GarminApi$Companion;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "garmin_cn"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "\u4f73\u660e\u4e2d\u56fd"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "\u4f73\u660e\u56fd\u9645"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][WebView] \u9875\u9762\u9519\u8bef: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jichi/ob/api/GarminApi$Companion;->addDebugLog(Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    new-instance v1, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final onTicket(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1738
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "ST-"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1739
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jichi/ob/ui/LoginWebActivity;->access$setDetected$p(Lcom/jichi/ob/ui/LoginWebActivity;Z)V

    const/16 v0, 0x28

    .line 1740
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2705 \u4f73\u660eticket\u6355\u83b7(JS\u6865): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginWeb"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$getLoginType$p(Lcom/jichi/ob/ui/LoginWebActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "garmin_cn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1742
    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$GarminJsBridge;->this$0:Lcom/jichi/ob/ui/LoginWebActivity;

    invoke-static {v1, p1, v0}, Lcom/jichi/ob/ui/LoginWebActivity;->access$exchangeGarminTicket(Lcom/jichi/ob/ui/LoginWebActivity;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
