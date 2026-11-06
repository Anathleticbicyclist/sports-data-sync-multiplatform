.class public final Lcom/jichi/ob/ui/SyncRunDetailDialog;
.super Ljava/lang/Object;
.source "SyncRunDetailDialog.java"


# static fields
.field private static currentFilter:Ljava/lang/String;

.field private static dialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "all"

    sput-object v0, Lcom/jichi/ob/ui/SyncRunDetailDialog;->currentFilter:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addRow(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fail"

    :try_start_6
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-nez v3, :cond_f

    return-void

    :cond_f
    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v8, 0x3

    invoke-static {v1, v8}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x5

    invoke-static {v1, v10}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v4, v9, v4, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v10, p3, 0x1

    aget-object v11, v3, v7

    invoke-static {v11}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ". "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v1, v5}, Lcom/jichi/ob/ui/SyncRunReport;->colorFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-static {v10}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v3, v8

    invoke-static {v11}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x7

    aget-object v12, v3, v12

    invoke-static {v12}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " \u2192 "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static/range {p1 .. p1}, Lcom/jichi/ob/ui/SyncRunReport;->colorSecondary(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x4

    aget-object v9, v3, v9

    invoke-static {v9}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    aget-object v11, v3, v10

    invoke-static {v11}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->safe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_c5
    .catchall {:try_start_6 .. :try_end_c5} :catchall_1aa

    const-string v14, "]\uff1a"

    const/high16 v15, 0x41300000    # 11.0f

    const/16 v7, 0xf0

    if-eqz v13, :cond_fa

    :try_start_cd
    invoke-static {v9, v7}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u539f\u56e0["

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getColor(I)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_140

    :cond_fa
    const-string v8, "skip"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12f

    invoke-static {v9, v7}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8bf4\u660e["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static/range {p1 .. p1}, Lcom/jichi/ob/ui/SyncRunReport;->colorSecondary(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_140

    :cond_12f
    invoke-static {v9, v7}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->clip(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static/range {p1 .. p1}, Lcom/jichi/ob/ui/SyncRunReport;->colorSecondary(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_140
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    const/16 v2, 0x9

    aget-object v2, v3, v2

    if-eqz v2, :cond_151

    const/4 v7, 0x1

    goto :goto_152

    :cond_151
    move v7, v4

    :goto_152
    if-eqz v7, :cond_1a6

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v5, "\u91cd\u8bd5"

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextSize(F)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget-object v5, Lcom/jichi/ob/ui/SyncRunReport;->INSTANCE:Lcom/jichi/ob/ui/SyncRunReport;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x3e

    invoke-static {v1, v6}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x24

    invoke-static {v1, v7}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v10}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v1, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1a9

    :cond_1a6
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1a9
    .catchall {:try_start_cd .. :try_end_1a9} :catchall_1aa

    :goto_1a9
    goto :goto_1ab

    :catchall_1aa
    move-exception v0

    :goto_1ab
    return-void
.end method

.method private static addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    nop

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    :try_start_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1f

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-eqz v3, :cond_1c

    aget-object v3, v3, v0

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1f
    if-nez v2, :cond_22

    return-void

    :cond_22
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "ok"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_cf

    const-string v4, " \u6761"

    if-eqz v3, :cond_4c

    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6210\u529f "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    :cond_4c
    const-string v3, "skip"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8df3\u8fc7 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8b

    :cond_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5931\u8d25 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u6761\uff08\u53ef\u76f4\u63a5\u91cd\u8bd5\uff09"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8b
    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p1, v2}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v2

    const/4 v5, 0x4

    invoke-static {p1, v5}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {p1, p3}, Lcom/jichi/ob/ui/SyncRunReport;->colorFor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v0

    :goto_b2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ce

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v2, :cond_cb

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-static {p0, p1, p2, v1}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addRow(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;I)V
    :try_end_cb
    .catchall {:try_start_31 .. :try_end_cb} :catchall_cf

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_ce
    goto :goto_d0

    :catchall_cf
    move-exception p0

    :goto_d0
    return-void
.end method

.method private static clip(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_c

    return-object p0

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u2026"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 1

    int-to-float v0, p1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    :catchall_11
    move-exception p0

    return p1
.end method

.method public static reopen()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dialog:Landroidx/appcompat/app/AlertDialog;
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_26

    if-eqz v1, :cond_25

    if-nez v0, :cond_b

    goto :goto_25

    :cond_b
    :try_start_b
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v2
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v2

    const/4 v2, 0x0

    :goto_12
    const/4 v3, 0x0

    if-nez v2, :cond_18

    :try_start_15
    sput-object v3, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dialog:Landroidx/appcompat/app/AlertDialog;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_26

    return-void

    :cond_18
    :try_start_18
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_1d

    :catchall_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    sput-object v3, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    sget-object v1, Lcom/jichi/ob/ui/SyncRunDetailDialog;->currentFilter:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->show(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_26

    goto :goto_27

    :cond_25
    :goto_25
    return-void

    :catchall_26
    move-exception v0

    :goto_27
    return-void
.end method

.method private static safe(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 14

    const-string v0, "fail"

    const-string v1, "skip"

    const-string v2, "ok"

    if-eqz p0, :cond_16a

    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_11

    goto/16 :goto_16a

    :cond_11
    if-nez p1, :cond_15

    const-string p1, "all"

    :cond_15
    invoke-static {}, Lcom/jichi/ob/ui/SyncRunReport;->snapshot()Ljava/util/List;

    move-result-object v4

    invoke-static {v2}, Lcom/jichi/ob/ui/SyncRunReport;->count(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1}, Lcom/jichi/ob/ui/SyncRunReport;->count(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0}, Lcom/jichi/ob/ui/SyncRunReport;->count(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_35

    const-string p1, "\u6682\u65e0\u672c\u6b21\u8fd0\u884c\u660e\u7ec6\uff0c\u8bf7\u5148\u5f00\u59cb\u4e00\u6b21\u540c\u6b65"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_35
    new-instance v8, Landroid/widget/ScrollView;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0xc

    invoke-static {p0, v10}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-static {v9, p0, v4, v2}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_73

    :cond_56
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-static {v9, p0, v4, v1}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_73

    :cond_60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    invoke-static {v9, p0, v4, v0}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_73

    :cond_6a
    invoke-static {v9, p0, v4, v2}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v9, p0, v4, v1}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v9, p0, v4, v0}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->addSection(Landroid/widget/LinearLayout;Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    :goto_73
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_a9

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u8be5\u7c7b\u578b\u6682\u65e0\u8bb0\u5f55"

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41500000    # 13.0f

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x4

    invoke-static {p0, v10}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v11

    const/16 v12, 0x10

    invoke-static {p0, v12}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v13

    invoke-static {p0, v10}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v10

    invoke-static {p0, v12}, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v4, v11, v13, v10, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a9
    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_b0
    .catchall {:try_start_9 .. :try_end_b0} :catchall_14c

    const-string v4, "\uff09"

    if-eqz v2, :cond_cc

    :try_start_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2705 \u6210\u529f\u660e\u7ec6\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12f

    :cond_cc
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ea

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u23ed \u8df3\u8fc7\u660e\u7ec6\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12f

    :cond_ea
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u274c \u5931\u8d25\u660e\u7ec6\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12f

    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83d\udccb \u672c\u6b21\u8fd0\u884c\u660e\u7ec6  \u6210\u529f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u8df3\u8fc7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 \u5931\u8d25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12f
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v0, "\u5173\u95ed"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    sput-object p1, Lcom/jichi/ob/ui/SyncRunDetailDialog;->currentFilter:Ljava/lang/String;

    sput-object v0, Lcom/jichi/ob/ui/SyncRunDetailDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V
    :try_end_14b
    .catchall {:try_start_b4 .. :try_end_14b} :catchall_14c

    goto :goto_169

    :catchall_14c
    move-exception p1

    :try_start_14d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6253\u5f00\u660e\u7ec6\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_167
    .catchall {:try_start_14d .. :try_end_167} :catchall_168

    goto :goto_169

    :catchall_168
    move-exception p0

    :goto_169
    return-void

    :cond_16a
    :goto_16a
    return-void
.end method
