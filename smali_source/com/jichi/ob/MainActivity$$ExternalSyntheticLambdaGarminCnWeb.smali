.class public final synthetic Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambdaGarminCnWeb;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/ob/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/ob/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambdaGarminCnWeb;->f$0:Lcom/jichi/ob/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambdaGarminCnWeb;->f$0:Lcom/jichi/ob/MainActivity;

    const-string v1, "garmin_cn"

    const-string v2, "https://connect.garmin.cn/app"

    invoke-virtual {v0, v1, v2}, Lcom/jichi/ob/MainActivity;->openLogin$app_devRelease(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
