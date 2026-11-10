.class final Lcom/jichi/ob/util/FitUtcShift$FieldDef;
.super Ljava/lang/Object;
.source "FitUtcShift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/util/FitUtcShift;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FieldDef"
.end annotation


# instance fields
.field final baseType:I

.field final fieldNo:I

.field final size:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p1, p0, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->fieldNo:I

    .line 245
    iput p2, p0, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->size:I

    .line 246
    iput p3, p0, Lcom/jichi/ob/util/FitUtcShift$FieldDef;->baseType:I

    .line 247
    return-void
.end method
