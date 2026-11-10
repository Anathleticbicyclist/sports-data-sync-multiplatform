.class final Lcom/jichi/ob/util/FitUtcShift$DefMsg;
.super Ljava/lang/Object;
.source "FitUtcShift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/FitUtcShift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefMsg"
.end annotation


# instance fields
.field final arch:I

.field final fieldCount:I

.field final fieldDefs:[Lcom/jichi/ob/util/FitUtcShift$FieldDef;

.field final globalMsg:I

.field final recordSize:I


# direct methods
.method constructor <init>(II[Lcom/jichi/ob/util/FitUtcShift$FieldDef;II)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p1, p0, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->globalMsg:I

    .line 259
    iput p2, p0, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->arch:I

    .line 260
    iput-object p3, p0, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->fieldDefs:[Lcom/jichi/ob/util/FitUtcShift$FieldDef;

    .line 261
    iput p4, p0, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->fieldCount:I

    .line 262
    iput p5, p0, Lcom/jichi/ob/util/FitUtcShift$DefMsg;->recordSize:I

    .line 263
    return-void
.end method
