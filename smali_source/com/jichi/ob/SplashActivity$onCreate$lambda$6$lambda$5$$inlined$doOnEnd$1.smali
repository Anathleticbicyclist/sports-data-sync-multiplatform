.class public final Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "Animator.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 SplashActivity.kt\ncom/jichi/ob/SplashActivity\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,137:1\n99#2:138\n86#3,4:139\n98#4:143\n97#5:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t\u00b8\u0006\n"
    }
    d2 = {
        "androidx/core/animation/AnimatorKt$addListener$listener$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animator",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "core-ktx_release",
        "androidx/core/animation/AnimatorKt$doOnEnd$$inlined$addListener$default$1"
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
.field final synthetic this$0:Lcom/jichi/ob/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/jichi/ob/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;->this$0:Lcom/jichi/ob/SplashActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 139
    iget-object p1, p0, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;->this$0:Lcom/jichi/ob/SplashActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;->this$0:Lcom/jichi/ob/SplashActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/jichi/ob/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/jichi/ob/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    iget-object p1, p0, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;->this$0:Lcom/jichi/ob/SplashActivity;

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p1, v0, v1}, Lcom/jichi/ob/SplashActivity;->overridePendingTransition(II)V

    .line 141
    iget-object p1, p0, Lcom/jichi/ob/SplashActivity$onCreate$lambda$6$lambda$5$$inlined$doOnEnd$1;->this$0:Lcom/jichi/ob/SplashActivity;

    invoke-virtual {p1}, Lcom/jichi/ob/SplashActivity;->finish()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
