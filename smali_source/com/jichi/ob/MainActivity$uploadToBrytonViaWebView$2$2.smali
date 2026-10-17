.class final Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/MainActivity;->uploadToBrytonViaWebView(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $uploader:Lcom/jichi/ob/BrytonWebUploader;


# direct methods
.method constructor <init>(Lcom/jichi/ob/BrytonWebUploader;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$2;->$uploader:Lcom/jichi/ob/BrytonWebUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2942
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 2942
    iget-object p1, p0, Lcom/jichi/ob/MainActivity$uploadToBrytonViaWebView$2$2;->$uploader:Lcom/jichi/ob/BrytonWebUploader;

    invoke-virtual {p1}, Lcom/jichi/ob/BrytonWebUploader;->destroy()V

    return-void
.end method
