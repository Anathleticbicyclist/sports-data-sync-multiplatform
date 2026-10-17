.class final Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MergeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/ui/MergeFragment;-><init>()V
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
    c = "com.jichi.ob.ui.MergeFragment$photoPicker$1$1"
    f = "MergeFragment.kt"
    i = {}
    l = {
        0x2cb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/jichi/ob/ui/MergeFragment;


# direct methods
.method constructor <init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jichi/ob/ui/MergeFragment;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iput-object p2, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->$uri:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->$uri:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 714
    iget v1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 715
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1$bmp$1;

    iget-object v4, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    iget-object v5, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->$uri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5, v3}, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1$bmp$1;-><init>(Lcom/jichi/ob/ui/MergeFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->label:I

    invoke-static {p1, v1, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 714
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    .line 728
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo v0, "\u7167\u7247\u8bfb\u53d6\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getPreviewTrack$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/ui/TrackPreviewView;

    move-result-object v0

    const-string v1, "previewTrack"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    invoke-virtual {v0, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setOverlayBitmap(Landroid/graphics/Bitmap;)V

    .line 731
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$getPhotoBgs$p(Lcom/jichi/ob/ui/MergeFragment;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {v0}, Lcom/jichi/ob/ui/MergeFragment;->access$getPreviewTrack$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/ui/TrackPreviewView;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    invoke-virtual {v0}, Lcom/jichi/ob/ui/TrackPreviewView;->getBgType()Lcom/jichi/ob/merge/StickerCore$StickerBg;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 732
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$getPreviewTrack$p(Lcom/jichi/ob/ui/MergeFragment;)Lcom/jichi/ob/ui/TrackPreviewView;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v3, p1

    :goto_1
    sget-object p1, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_OVERLAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    invoke-virtual {v3, p1}, Lcom/jichi/ob/ui/TrackPreviewView;->setBgType(Lcom/jichi/ob/merge/StickerCore$StickerBg;)V

    .line 733
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1, v2}, Lcom/jichi/ob/ui/MergeFragment;->access$setComboOverride$p(Lcom/jichi/ob/ui/MergeFragment;Z)V

    .line 735
    :cond_7
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    invoke-static {p1}, Lcom/jichi/ob/ui/MergeFragment;->access$refreshStickerChips(Lcom/jichi/ob/ui/MergeFragment;)V

    .line 736
    iget-object p1, p0, Lcom/jichi/ob/ui/MergeFragment$photoPicker$1$1;->this$0:Lcom/jichi/ob/ui/MergeFragment;

    const-string/jumbo v0, "\u7167\u7247\u5df2\u6dfb\u52a0"

    invoke-static {p1, v0}, Lcom/jichi/ob/ui/MergeFragment;->access$toast(Lcom/jichi/ob/ui/MergeFragment;Ljava/lang/String;)V

    .line 737
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
