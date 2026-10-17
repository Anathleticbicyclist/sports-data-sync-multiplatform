.class final Lcom/jichi/ob/GpxToFitConverter$DefBuilder;
.super Ljava/lang/Object;
.source "GpxToFitConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/GpxToFitConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefBuilder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGpxToFitConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GpxToFitConverter.kt\ncom/jichi/ob/GpxToFitConverter$DefBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,529:1\n1#2:530\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jichi/ob/GpxToFitConverter$DefBuilder;",
        "",
        "local",
        "",
        "global",
        "<init>",
        "(II)V",
        "fields",
        "",
        "Lkotlin/Triple;",
        "f",
        "fn",
        "sz",
        "bt",
        "build",
        "",
        "app_devRelease"
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
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final global:I

.field private final local:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->local:I

    iput p2, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->global:I

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()[B
    .locals 6

    .line 141
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    iget v2, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->local:I

    or-int/lit8 v2, v2, 0x40

    invoke-static {v1, v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    .line 145
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    .line 146
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-static {v1, v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    .line 147
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    iget v2, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->global:I

    invoke-static {v1, v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->access$u16(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    .line 148
    sget-object v1, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    iget-object v2, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    .line 149
    iget-object v1, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Triple;

    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v5, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-static {v5, v0, v3}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    sget-object v3, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-static {v3, v0, v4}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    sget-object v3, Lcom/jichi/ob/GpxToFitConverter;->INSTANCE:Lcom/jichi/ob/GpxToFitConverter;

    invoke-static {v3, v0, v2}, Lcom/jichi/ob/GpxToFitConverter;->access$u8(Lcom/jichi/ob/GpxToFitConverter;Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v1, "toByteArray(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final f(III)Lcom/jichi/ob/GpxToFitConverter$DefBuilder;
    .locals 2

    .line 139
    move-object v0, p0

    check-cast v0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;

    iget-object v0, p0, Lcom/jichi/ob/GpxToFitConverter$DefBuilder;->fields:Ljava/util/List;

    new-instance v1, Lkotlin/Triple;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
