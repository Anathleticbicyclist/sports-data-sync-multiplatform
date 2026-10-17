.class public final synthetic Lcom/jichi/ob/api/UploadEngine$upload$2$WhenMappings;
.super Ljava/lang/Object;
.source "UploadEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/api/UploadEngine$upload$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/jichi/ob/model/DataSource;->values()[Lcom/jichi/ob/model/DataSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/jichi/ob/model/DataSource;->OUTBASE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/jichi/ob/model/DataSource;->IGPSPORT:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/jichi/ob/model/DataSource;->XINGZHE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/jichi/ob/model/DataSource;->MAGENE:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/jichi/ob/model/DataSource;->BLACKBIRD:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/jichi/ob/model/DataSource;->BRYTON:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/jichi/ob/model/DataSource;->GIANT:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/jichi/ob/model/DataSource;->CYCITY:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/jichi/ob/model/DataSource;->GARMIN_COM:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/jichi/ob/model/DataSource;->GARMIN_CN:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/jichi/ob/model/DataSource;->COROS_CN:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/jichi/ob/model/DataSource;->COROS_INT:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/jichi/ob/model/DataSource;->WAHOO:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/jichi/ob/model/DataSource;->INTERVALS_ICU:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/jichi/ob/model/DataSource;->KOMOT:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v1, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/jichi/ob/model/DataSource;->LOCAL_FOLDER:Lcom/jichi/ob/model/DataSource;

    invoke-virtual {v1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    sput-object v0, Lcom/jichi/ob/api/UploadEngine$upload$2$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
