.class public final Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;
.super Ljava/lang/Object;
.source "LoginWebActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/LoginWebActivity;->startIgpCountdown(Lcom/google/android/material/button/MaterialButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic $btn:Lcom/google/android/material/button/MaterialButton;

.field final synthetic $remain:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$remain:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$btn:Lcom/google/android/material/button/MaterialButton;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 955
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$remain:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$remain:Lkotlin/jvm/internal/Ref$IntRef;

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 956
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$remain:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$btn:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 958
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$btn:Lcom/google/android/material/button/MaterialButton;

    const-string/jumbo v1, "\u53d1\u9001\u9a8c\u8bc1\u7801"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$btn:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$remain:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p0, Lcom/jichi/ob/ui/LoginWebActivity$startIgpCountdown$runnable$1;->$btn:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/button/MaterialButton;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
