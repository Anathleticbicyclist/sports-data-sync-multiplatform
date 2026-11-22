.class final Lcom/jichi/ob/api/FitDeviceFixer$Def;
.super Ljava/lang/Object;
.source "FitDeviceFixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/FitDeviceFixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Def"
.end annotation


# instance fields
.field big:Z

.field globalNum:I

.field nums:[I

.field offs:[I

.field sizes:[I

.field totalSize:I

.field tsSize:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jichi/ob/api/FitDeviceFixer$Def;->nums:[I

    .line 44
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jichi/ob/api/FitDeviceFixer$Def;->offs:[I

    .line 45
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jichi/ob/api/FitDeviceFixer$Def;->sizes:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jichi/ob/api/FitDeviceFixer$Def-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/jichi/ob/api/FitDeviceFixer$Def;-><init>()V

    return-void
.end method
