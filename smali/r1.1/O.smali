.class public final Lr1/O;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lr1/H;


# instance fields
.field public final b:Lr1/b;

.field public final q:Lr1/M;

.field public r:Ljava/util/List;

.field public s:Lr1/c;

.field public t:F

.field public u:I

.field public v:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lr1/O;->r:Ljava/util/List;

    sget-object v1, Lr1/c;->g:Lr1/c;

    iput-object v1, p0, Lr1/O;->s:Lr1/c;

    const v1, 0x3d5a511a    # 0.0533f

    iput v1, p0, Lr1/O;->t:F

    const/4 v1, 0x0

    iput v1, p0, Lr1/O;->u:I

    const v2, 0x3da3d70a    # 0.08f

    iput v2, p0, Lr1/O;->v:F

    new-instance v2, Lr1/b;

    invoke-direct {v2, p1, v1}, Lr1/b;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lr1/O;->b:Lr1/b;

    new-instance v3, Lr1/M;

    invoke-direct {v3, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lr1/O;->q:Lr1/M;

    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lr1/c;FIF)V
    .locals 6

    iput-object p2, p0, Lr1/O;->s:Lr1/c;

    iput p3, p0, Lr1/O;->t:F

    iput p4, p0, Lr1/O;->u:I

    iput p5, p0, Lr1/O;->v:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/b;

    iget-object v4, v3, Lj0/b;->d:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr1/O;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput-object v0, p0, Lr1/O;->r:Ljava/util/List;

    invoke-virtual {p0}, Lr1/O;->c()V

    :cond_3
    iget-object v0, p0, Lr1/O;->b:Lr1/b;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lr1/b;->a(Ljava/util/List;Lr1/c;FIF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(IF)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v1, p2}, LC2/b;->P(IIIF)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p1, "unset"

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget p2, Lk0/C;->a:I

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%.2fpx"

    invoke-static {p2, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 47

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lr1/O;->s:Lr1/c;

    iget v2, v2, Lr1/c;->a:I

    invoke-static {v2}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lr1/O;->u:I

    iget v4, v0, Lr1/O;->t:F

    invoke-virtual {v0, v3, v4}, Lr1/O;->b(IF)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Lr1/O;->s:Lr1/c;

    iget v7, v6, Lr1/c;->d:I

    iget v6, v6, Lr1/c;->e:I

    const-string v8, "unset"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_2

    if-eq v7, v9, :cond_1

    const/4 v12, 0x4

    if-eq v7, v12, :cond_0

    move-object v6, v8

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lk0/C;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "-0.05em -0.05em 0.15em "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lk0/C;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "0.06em 0.08em 0.15em "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-static {v6}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lk0/C;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "0.1em 0.12em 0.15em "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    sget v7, Lk0/C;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v7, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    sget v3, Lk0/C;->a:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lr1/O;->s:Lr1/c;

    iget v3, v3, Lr1/c;->b:I

    invoke-static {v3}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "background-color:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ".default_bg,.default_bg *"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    iget-object v12, v0, Lr1/O;->r:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_54

    iget-object v12, v0, Lr1/O;->r:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lj0/b;

    iget v13, v12, Lj0/b;->h:F

    iget v14, v12, Lj0/b;->g:I

    iget v15, v12, Lj0/b;->p:I

    const v16, -0x800001

    cmpl-float v17, v13, v16

    const/high16 v18, 0x42c80000    # 100.0f

    if-eqz v17, :cond_4

    mul-float v13, v13, v18

    :goto_2
    move/from16 v17, v4

    goto :goto_3

    :cond_4
    const/high16 v13, 0x42480000    # 50.0f

    goto :goto_2

    :goto_3
    iget v4, v12, Lj0/b;->i:I

    const/16 v19, -0x32

    const/16 v20, -0x64

    if-eq v4, v11, :cond_6

    if-eq v4, v10, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    move/from16 v4, v20

    goto :goto_4

    :cond_6
    move/from16 v4, v19

    :goto_4
    iget v9, v12, Lj0/b;->e:F

    cmpl-float v21, v9, v16

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const-string v5, "%.2f%%"

    if-eqz v21, :cond_e

    iget v10, v12, Lj0/b;->f:I

    if-eq v10, v11, :cond_c

    mul-float v9, v9, v18

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-ne v15, v11, :cond_9

    if-eq v14, v11, :cond_8

    const/4 v10, 0x2

    if-eq v14, v10, :cond_7

    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    move/from16 v14, v20

    goto :goto_5

    :cond_8
    const/4 v10, 0x2

    move/from16 v14, v19

    :goto_5
    neg-int v14, v14

    move/from16 v20, v14

    goto :goto_7

    :cond_9
    const/4 v10, 0x2

    if-eq v14, v11, :cond_b

    if-eq v14, v10, :cond_a

    const/16 v19, 0x0

    goto :goto_6

    :cond_a
    move/from16 v19, v20

    :cond_b
    :goto_6
    move/from16 v20, v19

    :goto_7
    move-object/from16 v28, v9

    const/4 v9, 0x0

    goto :goto_9

    :cond_c
    cmpl-float v10, v9, v23

    const-string v14, "%.2fem"

    if-ltz v10, :cond_d

    mul-float v9, v9, v17

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v28, v9

    const/4 v9, 0x0

    :goto_8
    const/16 v20, 0x0

    goto :goto_9

    :cond_d
    neg-float v9, v9

    sub-float v9, v9, v22

    mul-float v9, v9, v17

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v14, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v28, v9

    move v9, v11

    goto :goto_8

    :cond_e
    iget v9, v0, Lr1/O;->v:F

    sub-float v22, v22, v9

    mul-float v22, v22, v18

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :goto_9
    iget v10, v12, Lj0/b;->j:F

    cmpl-float v14, v10, v16

    if-eqz v14, :cond_f

    mul-float v10, v10, v18

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_a
    move-object/from16 v30, v5

    goto :goto_b

    :cond_f
    const-string v5, "fit-content"

    goto :goto_a

    :goto_b
    iget-object v5, v12, Lj0/b;->b:Landroid/text/Layout$Alignment;

    const-string v10, "start"

    const-string v14, "end"

    const-string v16, "center"

    if-nez v5, :cond_10

    move v5, v11

    move-object/from16 v31, v16

    const/4 v11, 0x2

    goto :goto_d

    :cond_10
    sget-object v19, Lr1/N;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v19, v5

    if-eq v5, v11, :cond_12

    const/4 v11, 0x2

    if-eq v5, v11, :cond_11

    move-object/from16 v31, v16

    :goto_c
    const/4 v5, 0x1

    goto :goto_d

    :cond_11
    move-object/from16 v31, v14

    goto :goto_c

    :cond_12
    const/4 v11, 0x2

    move-object/from16 v31, v10

    goto :goto_c

    :goto_d
    if-eq v15, v5, :cond_14

    if-eq v15, v11, :cond_13

    const-string v5, "horizontal-tb"

    :goto_e
    move-object/from16 v32, v5

    goto :goto_f

    :cond_13
    const-string v5, "vertical-lr"

    goto :goto_e

    :cond_14
    const-string v5, "vertical-rl"

    goto :goto_e

    :goto_f
    iget v5, v12, Lj0/b;->n:I

    iget v11, v12, Lj0/b;->o:F

    invoke-virtual {v0, v5, v11}, Lr1/O;->b(IF)Ljava/lang/String;

    move-result-object v33

    iget-boolean v5, v12, Lj0/b;->l:Z

    if-eqz v5, :cond_15

    iget v5, v12, Lj0/b;->m:I

    goto :goto_10

    :cond_15
    iget-object v5, v0, Lr1/O;->s:Lr1/c;

    iget v5, v5, Lr1/c;->c:I

    :goto_10
    invoke-static {v5}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v34

    const-string v5, "right"

    const-string v11, "top"

    const-string v22, "left"

    move/from16 v24, v4

    const/4 v4, 0x1

    if-eq v15, v4, :cond_1a

    const/4 v4, 0x2

    if-eq v15, v4, :cond_17

    if-eqz v9, :cond_16

    const-string v11, "bottom"

    :cond_16
    move-object/from16 v27, v11

    move-object/from16 v25, v22

    :goto_11
    const/4 v4, 0x2

    goto :goto_14

    :cond_17
    if-eqz v9, :cond_18

    goto :goto_13

    :cond_18
    :goto_12
    move-object/from16 v5, v22

    :cond_19
    :goto_13
    move-object/from16 v27, v5

    move-object/from16 v25, v11

    goto :goto_11

    :cond_1a
    if-eqz v9, :cond_19

    goto :goto_12

    :goto_14
    if-eq v15, v4, :cond_1c

    const/4 v4, 0x1

    if-ne v15, v4, :cond_1b

    goto :goto_15

    :cond_1b
    const-string v4, "width"

    move-object/from16 v29, v4

    move/from16 v4, v24

    goto :goto_16

    :cond_1c
    :goto_15
    const-string v4, "height"

    move-object/from16 v29, v4

    move/from16 v4, v20

    move/from16 v20, v24

    :goto_16
    iget-object v5, v12, Lj0/b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    sget-object v11, Lr1/F;->a:Ljava/util/regex/Pattern;

    const-string v11, "</span>"

    move/from16 v24, v4

    const-string v4, ";\'>"

    move/from16 v38, v7

    const-string v7, ""

    if-nez v5, :cond_1d

    new-instance v5, LE1/a;

    const/16 v9, 0x8

    invoke-direct {v5, v7, v9}, LE1/a;-><init>(Ljava/lang/String;I)V

    move-object/from16 v40, v3

    move-object/from16 v41, v6

    move-object/from16 v26, v7

    :goto_17
    move-object/from16 v39, v10

    move/from16 v36, v13

    move-object/from16 v46, v14

    goto/16 :goto_2a

    :cond_1d
    move-object/from16 v26, v7

    instance-of v7, v5, Landroid/text/Spanned;

    if-nez v7, :cond_1e

    new-instance v7, LE1/a;

    invoke-static {v5}, Lr1/F;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x8

    invoke-direct {v7, v5, v9}, LE1/a;-><init>(Ljava/lang/String;I)V

    move-object/from16 v40, v3

    move-object/from16 v41, v6

    move-object v5, v7

    goto :goto_17

    :cond_1e
    check-cast v5, Landroid/text/Spanned;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move/from16 v35, v9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move-object/from16 v39, v10

    const-class v10, Landroid/text/style/BackgroundColorSpan;

    move/from16 v36, v13

    const/4 v13, 0x0

    invoke-interface {v5, v13, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/BackgroundColorSpan;

    array-length v10, v9

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v10, :cond_1f

    aget-object v37, v9, v13

    invoke-virtual/range {v37 .. v37}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v37

    move-object/from16 v40, v9

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v40

    goto :goto_18

    :cond_1f
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_19
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v13, "bg_"

    invoke-static {v10, v13}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v37, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v40, v10

    const-string v10, "."

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " *"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v40 .. v40}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v10

    sget v13, Lk0/C;->a:I

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, v37

    goto :goto_19

    :cond_20
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const-class v10, Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v5, v13, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    array-length v10, v9

    const/4 v13, 0x0

    :goto_1a
    if-ge v13, v10, :cond_47

    move-object/from16 v40, v3

    aget-object v3, v9, v13

    move-object/from16 v41, v6

    instance-of v6, v3, Landroid/text/style/StrikethroughSpan;

    const/16 v37, 0x0

    if-eqz v6, :cond_21

    const-string v42, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v43, v42

    move/from16 v42, v6

    move-object/from16 v6, v43

    move-object/from16 v43, v9

    :goto_1b
    move/from16 v44, v10

    :goto_1c
    move/from16 v45, v13

    move-object/from16 v46, v14

    goto/16 :goto_22

    :cond_21
    move/from16 v42, v6

    instance-of v6, v3, Landroid/text/style/ForegroundColorSpan;

    if-eqz v6, :cond_22

    move-object v6, v3

    check-cast v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-static {v6}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    move-result-object v6

    sget v43, Lk0/C;->a:I

    sget-object v43, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v43, v9

    const-string v9, "<span style=\'color:"

    invoke-static {v9, v6, v4}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    :cond_22
    move-object/from16 v43, v9

    instance-of v6, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_23

    move-object v6, v3

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    sget v9, Lk0/C;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "<span class=\'bg_"

    move/from16 v44, v10

    const-string v10, "\'>"

    invoke-static {v9, v6, v10}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_23
    move/from16 v44, v10

    instance-of v6, v3, Lj0/e;

    if-eqz v6, :cond_24

    const-string v6, "<span style=\'text-combine-upright:all;\'>"

    goto :goto_1c

    :cond_24
    instance-of v6, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_26

    move-object v6, v3

    check-cast v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v6

    int-to-float v6, v6

    goto :goto_1d

    :cond_25
    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v35

    :goto_1d
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    sget v9, Lk0/C;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v9, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_26
    instance-of v6, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v6, :cond_27

    move-object v6, v3

    check-cast v6, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v6}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v6

    mul-float v6, v6, v18

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    sget v9, Lk0/C;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v9, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1c

    :cond_27
    instance-of v6, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v6, :cond_29

    move-object v6, v3

    check-cast v6, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    sget v9, Lk0/C;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "<span style=\'font-family:\""

    const-string v10, "\";\'>"

    invoke-static {v9, v6, v10}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1c

    :cond_28
    :goto_1e
    move/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v6, v37

    goto/16 :goto_22

    :cond_29
    instance-of v6, v3, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_2d

    move-object v6, v3

    check-cast v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_2c

    const/4 v10, 0x2

    if-eq v6, v10, :cond_2b

    const/4 v9, 0x3

    if-eq v6, v9, :cond_2a

    goto :goto_1e

    :cond_2a
    const-string v6, "<b><i>"

    goto/16 :goto_1c

    :cond_2b
    const-string v6, "<i>"

    goto/16 :goto_1c

    :cond_2c
    const-string v6, "<b>"

    goto/16 :goto_1c

    :cond_2d
    instance-of v6, v3, Lj0/g;

    if-eqz v6, :cond_31

    move-object v6, v3

    check-cast v6, Lj0/g;

    iget v6, v6, Lj0/g;->b:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_30

    const/4 v9, 0x1

    if-eq v6, v9, :cond_2f

    const/4 v10, 0x2

    if-eq v6, v10, :cond_2e

    goto :goto_1e

    :cond_2e
    const-string v6, "<ruby style=\'ruby-position:under;\'>"

    goto/16 :goto_1c

    :cond_2f
    const-string v6, "<ruby style=\'ruby-position:over;\'>"

    goto/16 :goto_1c

    :cond_30
    const-string v6, "<ruby style=\'ruby-position:unset;\'>"

    goto/16 :goto_1c

    :cond_31
    instance-of v6, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_32

    const-string v6, "<u>"

    goto/16 :goto_1c

    :cond_32
    instance-of v6, v3, Lj0/h;

    if-eqz v6, :cond_28

    move-object v6, v3

    check-cast v6, Lj0/h;

    iget v9, v6, Lj0/h;->a:I

    iget v10, v6, Lj0/h;->b:I

    move/from16 v45, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v46, v14

    const/4 v14, 0x1

    if-eq v10, v14, :cond_34

    const/4 v14, 0x2

    if-eq v10, v14, :cond_33

    goto :goto_1f

    :cond_33
    const-string v10, "open "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_34
    const/4 v14, 0x2

    const-string v10, "filled "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f
    if-eqz v9, :cond_38

    const/4 v10, 0x1

    if-eq v9, v10, :cond_37

    if-eq v9, v14, :cond_36

    const/4 v10, 0x3

    if-eq v9, v10, :cond_35

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_35
    const-string v9, "sesame"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_36
    const-string v9, "dot"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_37
    const-string v9, "circle"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_38
    const-string v9, "none"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v6, v6, Lj0/h;->c:I

    const/4 v10, 0x2

    if-eq v6, v10, :cond_39

    const-string v6, "over right"

    goto :goto_21

    :cond_39
    const-string v6, "under left"

    :goto_21
    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    sget v9, Lk0/C;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    invoke-static {v9, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_22
    if-nez v42, :cond_3a

    instance-of v9, v3, Landroid/text/style/ForegroundColorSpan;

    if-nez v9, :cond_3a

    instance-of v9, v3, Landroid/text/style/BackgroundColorSpan;

    if-nez v9, :cond_3a

    instance-of v9, v3, Lj0/e;

    if-nez v9, :cond_3a

    instance-of v9, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v9, :cond_3a

    instance-of v9, v3, Landroid/text/style/RelativeSizeSpan;

    if-nez v9, :cond_3a

    instance-of v9, v3, Lj0/h;

    if-eqz v9, :cond_3b

    :cond_3a
    const/4 v10, 0x3

    goto :goto_25

    :cond_3b
    instance-of v9, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v9, :cond_3d

    move-object v9, v3

    check-cast v9, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v9}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3c

    move-object v9, v11

    :goto_23
    const/4 v10, 0x3

    goto :goto_26

    :cond_3c
    move-object/from16 v9, v37

    goto :goto_23

    :cond_3d
    instance-of v9, v3, Landroid/text/style/StyleSpan;

    if-eqz v9, :cond_42

    move-object v9, v3

    check-cast v9, Landroid/text/style/StyleSpan;

    invoke-virtual {v9}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_41

    const/4 v10, 0x2

    if-eq v9, v10, :cond_40

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3e

    goto :goto_24

    :cond_3e
    const-string v37, "</i></b>"

    :cond_3f
    :goto_24
    move-object/from16 v9, v37

    goto :goto_26

    :cond_40
    const/4 v10, 0x3

    const-string v37, "</i>"

    goto :goto_24

    :cond_41
    const/4 v10, 0x3

    const-string v37, "</b>"

    goto :goto_24

    :cond_42
    const/4 v10, 0x3

    instance-of v9, v3, Lj0/g;

    if-eqz v9, :cond_43

    move-object v9, v3

    check-cast v9, Lj0/g;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "<rt>"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v9, Lj0/g;->a:Ljava/lang/String;

    invoke-static {v9}, Lr1/F;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</rt></ruby>"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    goto :goto_24

    :cond_43
    instance-of v9, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v9, :cond_3f

    const-string v37, "</u>"

    goto :goto_24

    :goto_25
    move-object v9, v11

    :goto_26
    invoke-interface {v5, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v5, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-eqz v6, :cond_46

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lr1/D;

    invoke-direct {v14, v13, v3, v6, v9}, Lr1/D;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr1/E;

    if-nez v6, :cond_44

    new-instance v6, Lr1/E;

    invoke-direct {v6}, Lr1/E;-><init>()V

    invoke-virtual {v7, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_44
    iget-object v6, v6, Lr1/E;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr1/E;

    if-nez v6, :cond_45

    new-instance v6, Lr1/E;

    invoke-direct {v6}, Lr1/E;-><init>()V

    invoke-virtual {v7, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_45
    iget-object v3, v6, Lr1/E;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v13, v45, 0x1

    move-object/from16 v3, v40

    move-object/from16 v6, v41

    move-object/from16 v9, v43

    move/from16 v10, v44

    move-object/from16 v14, v46

    goto/16 :goto_1a

    :cond_47
    move-object/from16 v40, v3

    move-object/from16 v41, v6

    move-object/from16 v46, v14

    const/4 v10, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_27
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v13, v9, :cond_4a

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-interface {v5, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lr1/F;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr1/E;

    iget-object v14, v6, Lr1/E;->b:Ljava/util/ArrayList;

    iget-object v10, v6, Lr1/E;->a:Ljava/util/ArrayList;

    move-object/from16 v18, v7

    sget-object v7, Lr1/D;->f:LD0/c;

    invoke-static {v14, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v6, v6, Lr1/E;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_28
    if-ge v14, v7, :cond_48

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v37, v6

    move-object/from16 v6, v35

    check-cast v6, Lr1/D;

    iget-object v6, v6, Lr1/D;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v37

    goto :goto_28

    :cond_48
    sget-object v6, Lr1/D;->e:LD0/c;

    invoke-static {v10, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v6, :cond_49

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v7, v7, 0x1

    check-cast v14, Lr1/D;

    iget-object v14, v14, Lr1/D;->c:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_49
    add-int/lit8 v13, v13, 0x1

    move v6, v9

    move-object/from16 v7, v18

    const/4 v10, 0x3

    goto :goto_27

    :cond_4a
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lr1/F;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, LE1/a;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x8

    invoke-direct {v5, v3, v9}, LE1/a;-><init>(Ljava/lang/String;I)V

    :goto_2a
    iget-object v3, v5, LE1/a;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4c

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    goto :goto_2c

    :cond_4b
    const/4 v6, 0x0

    goto :goto_2d

    :cond_4c
    :goto_2c
    const/4 v6, 0x1

    :goto_2d
    invoke-static {v6}, Lk0/c;->j(Z)V

    goto :goto_2b

    :cond_4d
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    iget v7, v12, Lj0/b;->q:F

    cmpl-float v9, v7, v23

    if-eqz v9, :cond_50

    const/4 v10, 0x2

    if-eq v15, v10, :cond_4f

    const/4 v9, 0x1

    if-ne v15, v9, :cond_4e

    goto :goto_2e

    :cond_4e
    const-string v9, "skewX"

    goto :goto_2f

    :cond_4f
    :goto_2e
    const-string v9, "skewY"

    :goto_2f
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    sget v9, Lk0/C;->a:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s(%.2fdeg)"

    invoke-static {v9, v10, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v37, v7

    :goto_30
    move-object/from16 v24, v5

    move-object/from16 v26, v6

    goto :goto_31

    :cond_50
    move-object/from16 v37, v26

    goto :goto_30

    :goto_31
    filled-new-array/range {v24 .. v37}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<span class=\'default_bg\'>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lj0/b;->c:Landroid/text/Layout$Alignment;

    if-eqz v5, :cond_53

    sget-object v6, Lr1/N;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_52

    const/4 v10, 0x2

    if-eq v5, v10, :cond_51

    move-object/from16 v5, v16

    goto :goto_32

    :cond_51
    move-object/from16 v5, v46

    goto :goto_32

    :cond_52
    const/4 v10, 0x2

    move-object/from16 v5, v39

    :goto_32
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<span style=\'display:inline-block; text-align:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_53
    const/4 v10, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    const-string v3, "</span></div>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v38, 0x1

    move/from16 v4, v17

    move-object/from16 v3, v40

    move-object/from16 v6, v41

    const/4 v9, 0x3

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_54
    const-string v3, "</div></body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><head><style>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_55
    const-string v2, "</style></head>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v9, 0x1

    invoke-static {v1, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "base64"

    iget-object v4, v0, Lr1/O;->q:Lr1/M;

    invoke-virtual {v4, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lr1/O;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lr1/O;->c()V

    :cond_0
    return-void
.end method
