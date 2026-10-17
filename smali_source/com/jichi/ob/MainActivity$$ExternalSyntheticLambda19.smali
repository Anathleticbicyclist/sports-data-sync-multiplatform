.class public final synthetic Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/jichi/ob/MainActivity$$ExternalSyntheticLambda19;->f$2:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/jichi/ob/MainActivity;->$r8$lambda$vp2VNO3zQnYfEvOac7LCY-P7q_g(Ljava/io/File;Ljava/io/File;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
