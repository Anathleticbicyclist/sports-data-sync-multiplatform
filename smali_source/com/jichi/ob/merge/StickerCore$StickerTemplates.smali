.class public final Lcom/jichi/ob/merge/StickerCore$StickerTemplates;
.super Ljava/lang/Object;
.source "StickerCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jichi/ob/merge/StickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StickerTemplates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/merge/StickerCore$StickerTemplates$Combo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerCore.kt\ncom/jichi/ob/merge/StickerCore$StickerTemplates\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,496:1\n774#2:497\n865#2,2:498\n295#2,2:500\n*S KotlinDebug\n*F\n+ 1 StickerCore.kt\ncom/jichi/ob/merge/StickerCore$StickerTemplates\n*L\n399#1:497\n399#1:498,2\n400#1:500,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\r\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u0010R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/jichi/ob/merge/StickerCore$StickerTemplates;",
        "",
        "<init>",
        "()V",
        "CATEGORIES",
        "",
        "",
        "getCATEGORIES",
        "()Ljava/util/List;",
        "ALL",
        "Lcom/jichi/ob/merge/StickerCore$StickerTemplate;",
        "getALL",
        "byCategory",
        "cat",
        "byId",
        "id",
        "",
        "COMBO_COUNT",
        "getCOMBO_COUNT",
        "()I",
        "Combo",
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


# static fields
.field private static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/merge/StickerCore$StickerTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final CATEGORIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMBO_COUNT:I

.field public static final INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    invoke-direct {v0}, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;-><init>()V

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->INSTANCE:Lcom/jichi/ob/merge/StickerCore$StickerTemplates;

    const/4 v0, 0x6

    .line 364
    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "\u6df1\u8272\u7ecf\u5178"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u6d45\u8272\u6781\u7b80"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u5730\u56fe\u6837\u5f0f"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u827a\u672f\u7279\u6548"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string/jumbo v2, "\u6570\u636e\u5361\u7247"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string/jumbo v2, "\u7167\u7247"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->CATEGORIES:Ljava/util/List;

    const/16 v1, 0x18

    .line 368
    new-array v1, v1, [Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    new-instance v9, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DEEP_SPACE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v17, 0x1

    const/4 v10, 0x1

    const-string/jumbo v11, "\u6df1\u7a7a\u6a59\u7130"

    const-string/jumbo v12, "\u6df1\u8272\u7ecf\u5178"

    invoke-direct/range {v9 .. v17}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v9, v1, v3

    .line 369
    new-instance v10, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CHECKER:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v18, 0x1

    const/4 v11, 0x2

    const-string/jumbo v12, "\u9ed1\u767d\u68cb\u76d8"

    const-string/jumbo v13, "\u6df1\u8272\u7ecf\u5178"

    invoke-direct/range {v10 .. v18}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v10, v1, v4

    .line 370
    new-instance v11, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerBg;->NEON:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->NEON:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerText;->NEON_PINK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v19, 0x1

    const/4 v12, 0x3

    const-string/jumbo v13, "\u9713\u8679\u591c\u8dd1"

    const-string/jumbo v14, "\u6df1\u8272\u7ecf\u5178"

    invoke-direct/range {v11 .. v19}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v11, v1, v5

    .line 371
    new-instance v12, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PURE_BLACK:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->CORNER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v20, 0x0

    const/4 v13, 0x4

    const-string/jumbo v14, "\u7eaf\u9ed1\u6781\u7b80"

    const-string/jumbo v15, "\u6df1\u8272\u7ecf\u5178"

    invoke-direct/range {v12 .. v20}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v12, v1, v6

    .line 373
    new-instance v13, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerBg;->MINIMAL_WHITE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->BLACK_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v20, Lcom/jichi/ob/merge/StickerCore$StickerText;->BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v21, 0x0

    const/4 v14, 0x5

    const-string/jumbo v15, "\u6781\u7b80\u767d"

    const-string/jumbo v16, "\u6d45\u8272\u6781\u7b80"

    invoke-direct/range {v13 .. v21}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v13, v1, v7

    .line 374
    new-instance v14, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->BLACK_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v20, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v21, Lcom/jichi/ob/merge/StickerCore$StickerText;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v22, 0x0

    const/4 v15, 0x6

    const-string/jumbo v16, "\u5976\u6cb9\u7eb8\u611f"

    const-string/jumbo v17, "\u6d45\u8272\u6781\u7b80"

    invoke-direct/range {v14 .. v22}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v14, v1, v8

    .line 375
    new-instance v15, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_GRAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v20, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->GRAY_FINE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v21, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v22, Lcom/jichi/ob/merge/StickerCore$StickerText;->BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v23, 0x0

    const/16 v16, 0x7

    const-string/jumbo v17, "\u6d45\u7070\u7ebf\u6761"

    const-string/jumbo v18, "\u6d45\u8272\u6781\u7b80"

    invoke-direct/range {v15 .. v23}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    aput-object v15, v1, v0

    .line 376
    new-instance v6, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v10, Lcom/jichi/ob/merge/StickerCore$StickerBg;->WARM_POSTER:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v11, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v12, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerText;->BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v14, 0x0

    const/16 v7, 0x8

    const-string/jumbo v8, "\u6696\u767d\u6d77\u62a5"

    const-string/jumbo v9, "\u6d45\u8272\u6781\u7b80"

    invoke-direct/range {v6 .. v14}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/4 v0, 0x7

    aput-object v6, v1, v0

    .line 378
    new-instance v7, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v11, Lcom/jichi/ob/merge/StickerCore$StickerBg;->MAP_GRID:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v12, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v15, 0x1

    const/16 v8, 0x9

    const-string/jumbo v9, "\u5730\u56fe\u7f51\u683c"

    const-string/jumbo v10, "\u5730\u56fe\u6837\u5f0f"

    invoke-direct/range {v7 .. v15}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x8

    aput-object v7, v1, v0

    .line 379
    new-instance v8, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v12, Lcom/jichi/ob/merge/StickerCore$StickerBg;->SATELLITE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v16, 0x1

    const/16 v9, 0xa

    const-string/jumbo v10, "\u6df1\u8272\u536b\u661f"

    const-string/jumbo v11, "\u5730\u56fe\u6837\u5f0f"

    invoke-direct/range {v8 .. v16}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x9

    aput-object v8, v1, v0

    .line 380
    new-instance v9, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_MAP:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerText;->BLACK:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v17, 0x0

    const/16 v10, 0xb

    const-string/jumbo v11, "\u6d45\u8272\u5730\u56fe"

    const-string/jumbo v12, "\u5730\u56fe\u6837\u5f0f"

    invoke-direct/range {v9 .. v17}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0xa

    aput-object v9, v1, v0

    .line 381
    new-instance v10, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerBg;->CONTOUR:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerText;->CREAM:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v18, 0x0

    const/16 v11, 0xc

    const-string/jumbo v12, "\u7b49\u9ad8\u7ebf"

    const-string/jumbo v13, "\u5730\u56fe\u6837\u5f0f"

    invoke-direct/range {v10 .. v18}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0xb

    aput-object v10, v1, v0

    .line 383
    new-instance v11, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerBg;->HEAT_BG:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->HEAT:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v19, 0x0

    const/16 v12, 0xd

    const-string/jumbo v13, "\u901f\u5ea6\u70ed\u529b"

    const-string/jumbo v14, "\u827a\u672f\u7279\u6548"

    invoke-direct/range {v11 .. v19}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0xc

    aput-object v11, v1, v0

    .line 384
    new-instance v12, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ORANGE_BAND:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v20, 0x1

    const/16 v13, 0xe

    const-string v14, "3D\u6a59\u5e26"

    const-string/jumbo v15, "\u827a\u672f\u7279\u6548"

    invoke-direct/range {v12 .. v20}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0xd

    aput-object v12, v1, v0

    .line 385
    new-instance v13, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ICE_BAND:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ICE_3D:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BIG:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v20, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v21, 0x1

    const/16 v14, 0xf

    const-string/jumbo v15, "\u51ac\u5b633D\u51b0\u84dd"

    const-string/jumbo v16, "\u827a\u672f\u7279\u6548"

    invoke-direct/range {v13 .. v21}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0xe

    aput-object v13, v1, v0

    .line 386
    new-instance v14, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerBg;->LIGHT_TRAIL:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->PHANTOM:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v20, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->TRIPLE:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v21, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v22, 0x1

    const/16 v15, 0x10

    const-string/jumbo v16, "\u5149\u7ed8\u62d6\u5f71"

    const-string/jumbo v17, "\u827a\u672f\u7279\u6548"

    invoke-direct/range {v14 .. v22}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0xf

    aput-object v14, v1, v0

    .line 388
    new-instance v15, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DUAL_DARK:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v20, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v21, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->DUAL:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v22, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v23, 0x1

    const/16 v16, 0x11

    const-string/jumbo v17, "\u5bf9\u6bd4\u5361"

    const-string/jumbo v18, "\u6570\u636e\u5361\u7247"

    invoke-direct/range {v15 .. v23}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x10

    aput-object v15, v1, v0

    .line 389
    new-instance v6, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v10, Lcom/jichi/ob/merge/StickerCore$StickerBg;->DEEP_SPACE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v11, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v12, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->GRID:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v14, 0x0

    const/16 v7, 0x12

    const-string/jumbo v8, "\u516d\u5bab\u683c"

    const-string/jumbo v9, "\u6570\u636e\u5361\u7247"

    invoke-direct/range {v6 .. v14}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x11

    aput-object v6, v1, v0

    .line 390
    new-instance v7, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v11, Lcom/jichi/ob/merge/StickerCore$StickerBg;->POSTER_ORANGE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v12, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/4 v15, 0x0

    const/16 v8, 0x13

    const-string/jumbo v9, "\u6d77\u62a5\u5927\u5b57"

    const-string/jumbo v10, "\u6570\u636e\u5361\u7247"

    invoke-direct/range {v7 .. v15}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x12

    aput-object v7, v1, v0

    .line 391
    new-instance v8, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v12, Lcom/jichi/ob/merge/StickerCore$StickerBg;->RETRO_PURPLE:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->GRID:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v16, 0x0

    const/16 v9, 0x14

    const-string/jumbo v10, "\u590d\u53e4\u6e38\u620f"

    const-string/jumbo v11, "\u6570\u636e\u5361\u7247"

    invoke-direct/range {v8 .. v16}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x13

    aput-object v8, v1, v0

    .line 393
    new-instance v9, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v13, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_OVERLAY:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->CORNER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v17, 0x1

    const/16 v10, 0x15

    const-string/jumbo v11, "\u900f\u660e\u53e0\u52a0"

    const-string/jumbo v12, "\u7167\u7247"

    invoke-direct/range {v9 .. v17}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x14

    aput-object v9, v1, v0

    .line 394
    new-instance v10, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v14, Lcom/jichi/ob/merge/StickerCore$StickerBg;->FROSTED:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->BAR:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v18, 0x1

    const/16 v11, 0x16

    const-string/jumbo v12, "\u78e8\u7802\u73bb\u7483"

    const-string/jumbo v13, "\u7167\u7247"

    invoke-direct/range {v10 .. v18}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x15

    aput-object v10, v1, v0

    .line 395
    new-instance v11, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v15, Lcom/jichi/ob/merge/StickerCore$StickerBg;->PHOTO_SPLIT:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->DUAL:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v19, 0x0

    const/16 v12, 0x17

    const-string/jumbo v13, "\u53cc\u56fe\u62fc\u63a5"

    const-string/jumbo v14, "\u7167\u7247"

    invoke-direct/range {v11 .. v19}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x16

    aput-object v11, v1, v0

    .line 396
    new-instance v12, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    sget-object v16, Lcom/jichi/ob/merge/StickerCore$StickerBg;->ANNUAL_DARK:Lcom/jichi/ob/merge/StickerCore$StickerBg;

    sget-object v17, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->ORANGE_GRAD:Lcom/jichi/ob/merge/StickerCore$StickerTrack;

    sget-object v18, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->POSTER:Lcom/jichi/ob/merge/StickerCore$StickerLayout;

    sget-object v19, Lcom/jichi/ob/merge/StickerCore$StickerText;->WHITE:Lcom/jichi/ob/merge/StickerCore$StickerText;

    const/16 v20, 0x0

    const/16 v13, 0x18

    const-string/jumbo v14, "\u5e74\u5ea6\u603b\u7ed3"

    const-string/jumbo v15, "\u7167\u7247"

    invoke-direct/range {v12 .. v20}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/jichi/ob/merge/StickerCore$StickerBg;Lcom/jichi/ob/merge/StickerCore$StickerTrack;Lcom/jichi/ob/merge/StickerCore$StickerLayout;Lcom/jichi/ob/merge/StickerCore$StickerText;Z)V

    const/16 v0, 0x17

    aput-object v12, v1, v0

    .line 366
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->ALL:Ljava/util/List;

    .line 413
    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerBg;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->size()I

    move-result v0

    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerTrack;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/enums/EnumEntries;->size()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerLayout;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/enums/EnumEntries;->size()I

    move-result v1

    mul-int/2addr v0, v1

    .line 414
    invoke-static {}, Lcom/jichi/ob/merge/StickerCore$StickerText;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/enums/EnumEntries;->size()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/2addr v0, v5

    .line 413
    sput v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->COMBO_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final byCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/jichi/ob/merge/StickerCore$StickerTemplate;",
            ">;"
        }
    .end annotation

    const-string v0, "cat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->ALL:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 497
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 498
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    .line 399
    invoke-virtual {v3}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 499
    :cond_1
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final byId(I)Lcom/jichi/ob/merge/StickerCore$StickerTemplate;
    .locals 3

    .line 400
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->ALL:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 500
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    .line 400
    invoke-virtual {v2}, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 501
    :goto_0
    check-cast v1, Lcom/jichi/ob/merge/StickerCore$StickerTemplate;

    return-object v1
.end method

.method public final getALL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jichi/ob/merge/StickerCore$StickerTemplate;",
            ">;"
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->ALL:Ljava/util/List;

    return-object v0
.end method

.method public final getCATEGORIES()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->CATEGORIES:Ljava/util/List;

    return-object v0
.end method

.method public final getCOMBO_COUNT()I
    .locals 1

    .line 412
    sget v0, Lcom/jichi/ob/merge/StickerCore$StickerTemplates;->COMBO_COUNT:I

    return v0
.end method
