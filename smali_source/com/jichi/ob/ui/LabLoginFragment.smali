.class public final Lcom/jichi/ob/ui/LabLoginFragment;
.super Landroidx/fragment/app/Fragment;
.source "LabLoginFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jichi/ob/ui/LabLoginFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLabLoginFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LabLoginFragment.kt\ncom/jichi/ob/ui/LabLoginFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n774#2:193\n865#2,2:194\n774#2:197\n865#2,2:198\n1#3:196\n*S KotlinDebug\n*F\n+ 1 LabLoginFragment.kt\ncom/jichi/ob/ui/LabLoginFragment\n*L\n76#1:193\n76#1:194,2\n159#1:197\n159#1:198,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0002J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0008H\u0002J\u0006\u0010\u001d\u001a\u00020\u0016J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0008H\u0002J\u000c\u0010\u001f\u001a\u00020 *\u00020\u0008H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/jichi/ob/ui/LabLoginFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "prefs",
        "Lcom/jichi/ob/util/PrefsManager;",
        "statusViews",
        "",
        "Lcom/jichi/ob/model/DataSource;",
        "Landroid/widget/TextView;",
        "btnViews",
        "Lcom/google/android/material/button/MaterialButton;",
        "logoutViews",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "dynamicDs",
        "",
        "ensureDynamicCards",
        "buildCard",
        "ds",
        "refreshStates",
        "logout",
        "toLoginTypeLab",
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
.field private final btnViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jichi/ob/model/DataSource;",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private final dynamicDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jichi/ob/model/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final logoutViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jichi/ob/model/DataSource;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Lcom/jichi/ob/util/PrefsManager;

.field private final statusViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jichi/ob/model/DataSource;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-fkMInzwTyBYyEcJbi7VyTTUetQ(Lcom/jichi/ob/ui/LabLoginFragment;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->buildCard$lambda$10(Lcom/jichi/ob/ui/LabLoginFragment;I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FSMbIyuv0wob17kuP01mX5H5PD4(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->onViewCreated$lambda$4(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NlGhI2kOb_3cboDvBhtbSdc_QR4(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LabLoginFragment;->ensureDynamicCards$lambda$8(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PWKBBgU8PTIJe5X4wix68lfesME(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LabLoginFragment;->ensureDynamicCards$lambda$6(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnIyAdFGrWBkzV4wHOFid2d3sW8(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LabLoginFragment;->ensureDynamicCards$lambda$7(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWX-6PVmTUMaFcwey3xfmJEizGs(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->onViewCreated$lambda$0(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gyYoN0hnY4ZhtFvMrbEYCf_00kk(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->onViewCreated$lambda$2(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kKIjaqax3QlfwUfW9NUAtQDz-y0(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/jichi/ob/ui/LabLoginFragment;->ensureDynamicCards$lambda$9(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kSwHLNGMcdU2tYWOaCVPr9rLHIY(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->onViewCreated$lambda$1(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vyE_-v4gyvj4N1ViF_qYC_Fhzq8(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->onViewCreated$lambda$3(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/jichi/ob/ui/LabLoginFragment;->dynamicDs:Ljava/util/List;

    return-void
.end method

.method private final buildCard(Lcom/jichi/ob/model/DataSource;)Landroid/view/View;
    .locals 13

    .line 105
    new-instance v0, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda9;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    .line 106
    new-instance v1, Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x8

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 107
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Lcom/google/android/material/card/MaterialCardView;->setRadius(F)V

    const/4 v7, 0x0

    .line 111
    invoke-virtual {v1, v7}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    const/4 v7, 0x1

    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 113
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/jichi/ob/R$color;->primary:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    const/16 v8, 0xe

    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/16 v10, 0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v0, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v1, v9, v11, v8, v10}, Lcom/google/android/material/card/MaterialCardView;->setContentPadding(IIII)V

    .line 116
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 121
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41700000    # 15.0f

    .line 126
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 127
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/jichi/ob/R$color;->text_primary:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x0

    .line 128
    invoke-virtual {v2, v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 129
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v10, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v2, Landroid/view/View;

    .line 124
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    sget v7, Lcom/jichi/ob/R$id;->btnLabDynLogout:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setId(I)V

    .line 132
    const-string/jumbo v7, "\u6ce8\u9500"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41100000    # 9.0f

    .line 133
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    sget v11, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-virtual {v7, v11}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v0, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    invoke-virtual {v2, v7, v12, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    check-cast v2, Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    sget v5, Lcom/jichi/ob/R$id;->tvLabDynStatus:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    .line 141
    const-string/jumbo v5, "\u672a\u767b\u5f55"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41300000    # 11.0f

    .line 142
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/jichi/ob/R$color;->text_secondary:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v2, Landroid/view/View;

    .line 139
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    new-instance v2, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;)V

    .line 146
    sget v4, Lcom/jichi/ob/R$id;->btnLabDynLogin:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    .line 147
    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u767b\u5f55"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 148
    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setTextSize(F)V

    .line 149
    invoke-virtual {v2, v10}, Lcom/google/android/material/button/MaterialButton;->setInsetTop(I)V

    invoke-virtual {v2, v10}, Lcom/google/android/material/button/MaterialButton;->setInsetBottom(I)V

    .line 150
    invoke-virtual {v2, v10}, Lcom/google/android/material/button/MaterialButton;->setMinHeight(I)V

    .line 151
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/jichi/ob/R$color;->primary:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundColor(I)V

    .line 152
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x22

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v2, Landroid/view/View;

    .line 145
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    check-cast v8, Landroid/view/View;

    invoke-virtual {v1, v8}, Lcom/google/android/material/card/MaterialCardView;->addView(Landroid/view/View;)V

    .line 154
    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method private static final buildCard$lambda$10(Lcom/jichi/ob/ui/LabLoginFragment;I)I
    .locals 0

    int-to-float p1, p1

    .line 105
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private final ensureDynamicCards()V
    .locals 7

    .line 74
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    sget v1, Lcom/jichi/ob/R$id;->labRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Lcom/jichi/ob/model/DataSource;

    const/4 v2, 0x0

    sget-object v3, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v2}, Lcom/jichi/ob/model/DataSource$Companion;->labLoginPlatforms()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 194
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/jichi/ob/model/DataSource;

    .line 76
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 77
    iget-object v1, p0, Lcom/jichi/ob/ui/LabLoginFragment;->dynamicDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    .line 79
    invoke-direct {p0, v2}, Lcom/jichi/ob/ui/LabLoginFragment;->buildCard(Lcom/jichi/ob/model/DataSource;)Landroid/view/View;

    move-result-object v4

    .line 80
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v5, p0, Lcom/jichi/ob/ui/LabLoginFragment;->dynamicDs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v5, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    sget v6, Lcom/jichi/ob/R$id;->tvLabDynStatus:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v5, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    sget v6, Lcom/jichi/ob/R$id;->btnLabDynLogin:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v5, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    sget v6, Lcom/jichi/ob/R$id;->btnLabDynLogout:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_4

    new-instance v5, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda5;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_4
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_3

    new-instance v5, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v2}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda6;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 90
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jichi/ob/model/DataSource;

    .line 91
    iget-object v3, p0, Lcom/jichi/ob/ui/LabLoginFragment;->dynamicDs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 92
    invoke-direct {p0, v2}, Lcom/jichi/ob/ui/LabLoginFragment;->buildCard(Lcom/jichi/ob/model/DataSource;)Landroid/view/View;

    move-result-object v3

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->dynamicDs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    sget v5, Lcom/jichi/ob/R$id;->tvLabDynStatus:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    sget v5, Lcom/jichi/ob/R$id;->btnLabDynLogin:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    sget v5, Lcom/jichi/ob/R$id;->btnLabDynLogout:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v3, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_7

    new-instance v4, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v2}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda7;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_7
    iget-object v3, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    new-instance v4, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v2}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda8;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method private static final ensureDynamicCards$lambda$6(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p2, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/MainActivity;->openPlatformLogin$app_devRelease(Lcom/jichi/ob/model/DataSource;)V

    :cond_1
    return-void
.end method

.method private static final ensureDynamicCards$lambda$7(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->logout(Lcom/jichi/ob/model/DataSource;)V

    return-void
.end method

.method private static final ensureDynamicCards$lambda$8(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p2, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/jichi/ob/MainActivity;->openPlatformLogin$app_devRelease(Lcom/jichi/ob/model/DataSource;)V

    :cond_1
    return-void
.end method

.method private static final ensureDynamicCards$lambda$9(Lcom/jichi/ob/ui/LabLoginFragment;Lcom/jichi/ob/model/DataSource;Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->logout(Lcom/jichi/ob/model/DataSource;)V

    return-void
.end method

.method private final logout(Lcom/jichi/ob/model/DataSource;)V
    .locals 4

    const-string/jumbo v0, "\u5df2\u6ce8\u9500"

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/jichi/ob/ui/LabLoginFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v1, :cond_0

    const-string v1, "prefs"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/jichi/ob/util/PrefsManager;->clearCredential(Lcom/jichi/ob/model/DataSource;)V

    .line 172
    sget-object v1, Lcom/jichi/ob/ui/LoginWebActivity;->Companion:Lcom/jichi/ob/ui/LoginWebActivity$Companion;

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->toLoginTypeLab(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/jichi/ob/ui/LoginWebActivity$Companion;->clearPlatformWebLogin(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :catch_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->refreshStates()V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->closeLabLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$1(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->openSuuntoLogin$app_devRelease()V

    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/jichi/ob/MainActivity;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/jichi/ob/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/jichi/ob/MainActivity;->openZeppLogin$app_devRelease()V

    :cond_1
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    .line 51
    sget-object p1, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->logout(Lcom/jichi/ob/model/DataSource;)V

    return-void
.end method

.method private static final onViewCreated$lambda$4(Lcom/jichi/ob/ui/LabLoginFragment;Landroid/view/View;)V
    .locals 0

    .line 52
    sget-object p1, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    invoke-direct {p0, p1}, Lcom/jichi/ob/ui/LabLoginFragment;->logout(Lcom/jichi/ob/model/DataSource;)V

    return-void
.end method

.method private final toLoginTypeLab(Lcom/jichi/ob/model/DataSource;)Ljava/lang/String;
    .locals 1

    .line 179
    sget-object v0, Lcom/jichi/ob/ui/LabLoginFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/jichi/ob/model/DataSource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 189
    const-string p1, ""

    return-object p1

    .line 188
    :pswitch_0
    const-string/jumbo p1, "trainingpeaks"

    return-object p1

    .line 187
    :pswitch_1
    const-string/jumbo p1, "withings"

    return-object p1

    .line 186
    :pswitch_2
    const-string p1, "fitbit"

    return-object p1

    .line 185
    :pswitch_3
    const-string p1, "polar"

    return-object p1

    .line 184
    :pswitch_4
    const-string/jumbo p1, "strava"

    return-object p1

    .line 183
    :pswitch_5
    const-string p1, "2bulu"

    return-object p1

    .line 182
    :pswitch_6
    const-string p1, "bryton"

    return-object p1

    .line 181
    :pswitch_7
    const-string/jumbo p1, "zepp"

    return-object p1

    .line 180
    :pswitch_8
    const-string/jumbo p1, "suunto"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget p3, Lcom/jichi/ob/R$layout;->fragment_lab_login:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    new-instance p2, Lcom/jichi/ob/util/PrefsManager;

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Lcom/jichi/ob/util/PrefsManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    .line 36
    sget p2, Lcom/jichi/ob/R$id;->btnLabBack:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda0;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    sget v1, Lcom/jichi/ob/R$id;->tvSuuntoLabStatus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    sget v1, Lcom/jichi/ob/R$id;->tvZeppLabStatus:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    sget v1, Lcom/jichi/ob/R$id;->btnSuuntoLabLogin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    sget v1, Lcom/jichi/ob/R$id;->btnZeppLabLogin:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    sget v1, Lcom/jichi/ob/R$id;->btnSuuntoLabLogout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    sget v1, Lcom/jichi/ob/R$id;->btnZeppLabLogout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda1;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_1
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda2;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_2
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    new-instance v0, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda3;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_3
    iget-object p2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    sget-object v0, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    new-instance v0, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/jichi/ob/ui/LabLoginFragment$$ExternalSyntheticLambda4;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_4
    sget p2, Lcom/jichi/ob/R$id;->tvBrytonLabStatus:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_5
    sget p2, Lcom/jichi/ob/R$id;->btnBrytonLabLogin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_6
    sget p2, Lcom/jichi/ob/R$id;->btnBrytonLabLogout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_7
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance p2, Lcom/jichi/ob/ui/LabLoginFragment$onViewCreated$6;

    invoke-direct {p2, p0}, Lcom/jichi/ob/ui/LabLoginFragment$onViewCreated$6;-><init>(Lcom/jichi/ob/ui/LabLoginFragment;)V

    check-cast p2, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 66
    invoke-direct {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->ensureDynamicCards()V

    .line 67
    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->refreshStates()V

    return-void
.end method

.method public final refreshStates()V
    .locals 11

    const/4 v0, 0x2

    .line 158
    new-array v1, v0, [Lcom/jichi/ob/model/DataSource;

    sget-object v2, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 159
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    sget-object v5, Lcom/jichi/ob/model/DataSource;->Companion:Lcom/jichi/ob/model/DataSource$Companion;

    invoke-virtual {v5}, Lcom/jichi/ob/model/DataSource$Companion;->labLoginPlatforms()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 197
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 198
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/jichi/ob/model/DataSource;

    .line 159
    new-array v9, v0, [Lcom/jichi/ob/model/DataSource;

    sget-object v10, Lcom/jichi/ob/model/DataSource;->SUUNTO:Lcom/jichi/ob/model/DataSource;

    aput-object v10, v9, v3

    sget-object v10, Lcom/jichi/ob/model/DataSource;->ZEPP:Lcom/jichi/ob/model/DataSource;

    aput-object v10, v9, v4

    invoke-static {v9}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 198
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 197
    check-cast v6, Ljava/lang/Iterable;

    .line 159
    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 160
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jichi/ob/model/DataSource;

    .line 161
    iget-object v2, p0, Lcom/jichi/ob/ui/LabLoginFragment;->prefs:Lcom/jichi/ob/util/PrefsManager;

    if-nez v2, :cond_3

    const-string v2, "prefs"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v2, v1}, Lcom/jichi/ob/util/PrefsManager;->isLoggedIn(Lcom/jichi/ob/model/DataSource;)Z

    move-result v2

    .line 162
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    const-string/jumbo v5, "\u2705 \u5df2\u767b\u5f55"

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "\u672a\u767b\u5f55"

    :goto_2
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_5
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->statusViews:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/jichi/ob/ui/LabLoginFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v2, :cond_6

    sget v6, Lcom/jichi/ob/R$color;->primary:I

    goto :goto_3

    :cond_6
    sget v6, Lcom/jichi/ob/R$color;->text_secondary:I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    :cond_7
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->btnViews:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    if-eqz v4, :cond_8

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    .line 165
    :cond_8
    iget-object v4, p0, Lcom/jichi/ob/ui/LabLoginFragment;->logoutViews:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_4

    :cond_9
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_a
    return-void
.end method
