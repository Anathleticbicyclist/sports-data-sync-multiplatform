.class public final Lcom/jichi/ob/MainActivity$onCreate$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
        "com/jichi/ob/MainActivity$onCreate$2",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
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
.field final synthetic this$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method constructor <init>(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    const/4 p1, 0x1

    .line 335
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getRecordFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/RecordCenterFragment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getRecordFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/RecordCenterFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "recordFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/jichi/ob/ui/RecordCenterFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/MainActivity;->closeRecordCenter()V

    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getLabLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LabLoginFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-static {v0}, Lcom/jichi/ob/MainActivity;->access$getLabLoginFragment$p(Lcom/jichi/ob/MainActivity;)Lcom/jichi/ob/ui/LabLoginFragment;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "labLoginFragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/jichi/ob/ui/LabLoginFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/MainActivity;->closeLabLogin()V

    return-void

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$onCreate$2;->this$0:Lcom/jichi/ob/MainActivity;

    invoke-virtual {v0}, Lcom/jichi/ob/MainActivity;->finish()V

    return-void
.end method
