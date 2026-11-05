.class public final synthetic Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jichi/bikecomputer/BikeActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/jichi/bikecomputer/BikeActivity;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/bikecomputer/BikeActivity;

    iput-object p2, p0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;->f$0:Lcom/jichi/bikecomputer/BikeActivity;

    iget-object v1, p0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/jichi/bikecomputer/BikeActivity$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/jichi/bikecomputer/BikeActivity;->lambda$onFinished$6$com-jichi-bikecomputer-BikeActivity(Ljava/io/File;Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method
