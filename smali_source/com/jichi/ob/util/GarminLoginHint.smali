.class public final Lcom/jichi/ob/util/GarminLoginHint;
.super Ljava/lang/Object;
.source "GarminLoginHint.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/jichi/ob/util/GarminLoginHint;",
        "",
        "<init>",
        "()V",
        "show",
        "",
        "context",
        "Landroid/content/Context;",
        "region",
        "",
        "text",
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
.field public static final INSTANCE:Lcom/jichi/ob/util/GarminLoginHint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jichi/ob/util/GarminLoginHint;

    invoke-direct {v0}, Lcom/jichi/ob/util/GarminLoginHint;-><init>()V

    sput-object v0, Lcom/jichi/ob/util/GarminLoginHint;->INSTANCE:Lcom/jichi/ob/util/GarminLoginHint;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "\u2705 "

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "region"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v0, "\u767b\u5f55\u6210\u529f\n\n\u672c\u6b21\u767b\u5f55\u5df2\u751f\u6210\u3010\u957f\u671f\u5237\u65b0\u51ed\u8bc1\u3011\uff0c\u540e\u7eed\u6253\u5f00 App \u4f1a\u81ea\u52a8\u7eed\u671f\uff0c\u65e0\u9700\u91cd\u590d\u767b\u5f55\u3002\n\n\u26a0\ufe0f \u8bf7\u52ff\u9891\u7e41\u91cd\u65b0\u767b\u5f55/\u5207\u6362\u8d26\u53f7\uff0c\u4ee5\u514d\u89e6\u53d1\u4f73\u660e\u98ce\u63a7\uff08\u9650\u6d41\u5c01\u7981\u6570\u5c0f\u65f6~\u4e00\u5929\uff09\u3002\n\n\u5efa\u8bae\uff1a\u8d26\u53f7\u5bc6\u7801\u4e00\u6b21\u8f93\u5bf9\uff0c\u4e0d\u8981\u540c\u65f6\u767b\u5f55\u5f00\u53d1\u4f53\u9a8c\u7248\u4e0e\u6b63\u5f0f\u7248\u3002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    const-string/jumbo p1, "\u767b\u5f55\u6210\u529f \u00b7 \u6e29\u99a8\u63d0\u793a"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 25
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 26
    const-string/jumbo p2, "\u77e5\u9053\u4e86"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final text(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2705 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "\u767b\u5f55\u6210\u529f\uff1a\u5df2\u751f\u6210\u957f\u671f\u5237\u65b0\u51ed\u8bc1\uff0c\u540e\u7eed\u81ea\u52a8\u7eed\u671f\u65e0\u9700\u91cd\u590d\u767b\u5f55\uff1b\u8bf7\u52ff\u9891\u7e41\u91cd\u65b0\u767b\u5f55\u4ee5\u514d\u89e6\u53d1\u4f73\u660e\u98ce\u63a7\u3002"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
