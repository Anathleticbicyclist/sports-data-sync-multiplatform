.class final Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1$1;
.super Ljava/lang/Object;
.source "GarminApi.kt"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1;->onReceiveValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback;"
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
.field final synthetic $check:Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;


# direct methods
.method constructor <init>(Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;)V
    .locals 0

    iput-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1$1;->$check:Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1475
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public final onReceiveValue(Ljava/lang/String;)V
    .locals 0

    .line 1475
    iget-object p1, p0, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$1$1;->$check:Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;

    invoke-virtual {p1}, Lcom/jichi/ob/api/GarminApi$downloadFitOnce$2$result$1$1$1$check$1;->run()V

    return-void
.end method
