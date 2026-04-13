.class public Landroidx/constraintlayout/helper/widget/Flow;
.super Lu/s;


# instance fields
.field public final y:Lr/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lu/c;->b:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/c;->v:Ljava/util/HashMap;

    iput-object p1, p0, Lu/c;->r:Landroid/content/Context;

    invoke-super {p0, p2}, Lu/s;->g(Landroid/util/AttributeSet;)V

    new-instance p1, Lr/g;

    invoke-direct {p1}, Lr/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lr/g;->s0:I

    iput v0, p1, Lr/g;->t0:I

    iput v0, p1, Lr/g;->u0:I

    iput v0, p1, Lr/g;->v0:I

    iput v0, p1, Lr/g;->w0:I

    iput v0, p1, Lr/g;->x0:I

    iput-boolean v0, p1, Lr/g;->y0:Z

    iput v0, p1, Lr/g;->z0:I

    iput v0, p1, Lr/g;->A0:I

    new-instance v1, Ls/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lr/g;->B0:Ls/b;

    const/4 v1, 0x0

    iput-object v1, p1, Lr/g;->C0:Lu/f;

    const/4 v2, -0x1

    iput v2, p1, Lr/g;->D0:I

    iput v2, p1, Lr/g;->E0:I

    iput v2, p1, Lr/g;->F0:I

    iput v2, p1, Lr/g;->G0:I

    iput v2, p1, Lr/g;->H0:I

    iput v2, p1, Lr/g;->I0:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p1, Lr/g;->J0:F

    iput v3, p1, Lr/g;->K0:F

    iput v3, p1, Lr/g;->L0:F

    iput v3, p1, Lr/g;->M0:F

    iput v3, p1, Lr/g;->N0:F

    iput v3, p1, Lr/g;->O0:F

    iput v0, p1, Lr/g;->P0:I

    iput v0, p1, Lr/g;->Q0:I

    const/4 v4, 0x2

    iput v4, p1, Lr/g;->R0:I

    iput v4, p1, Lr/g;->S0:I

    iput v0, p1, Lr/g;->T0:I

    iput v2, p1, Lr/g;->U0:I

    iput v0, p1, Lr/g;->V0:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p1, Lr/g;->W0:Ljava/util/ArrayList;

    iput-object v1, p1, Lr/g;->X0:[Lr/d;

    iput-object v1, p1, Lr/g;->Y0:[Lr/d;

    iput-object v1, p1, Lr/g;->Z0:[I

    iput v0, p1, Lr/g;->b1:I

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    if-eqz p2, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lu/q;->b:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1a

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->V0:I

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->s0:I

    iput v5, v6, Lr/g;->t0:I

    iput v5, v6, Lr/g;->u0:I

    iput v5, v6, Lr/g;->v0:I

    goto/16 :goto_1

    :cond_1
    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->u0:I

    iput v5, v6, Lr/g;->w0:I

    iput v5, v6, Lr/g;->x0:I

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0x13

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->v0:I

    goto/16 :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->w0:I

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->s0:I

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->x0:I

    goto/16 :goto_1

    :cond_6
    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->t0:I

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x36

    if-ne v5, v6, :cond_8

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->T0:I

    goto/16 :goto_1

    :cond_8
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_9

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->D0:I

    goto/16 :goto_1

    :cond_9
    const/16 v6, 0x35

    if-ne v5, v6, :cond_a

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->E0:I

    goto/16 :goto_1

    :cond_a
    const/16 v6, 0x26

    if-ne v5, v6, :cond_b

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->F0:I

    goto/16 :goto_1

    :cond_b
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_c

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->H0:I

    goto/16 :goto_1

    :cond_c
    const/16 v6, 0x28

    if-ne v5, v6, :cond_d

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->G0:I

    goto/16 :goto_1

    :cond_d
    const/16 v6, 0x30

    if-ne v5, v6, :cond_e

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->I0:I

    goto/16 :goto_1

    :cond_e
    const/16 v6, 0x2a

    if-ne v5, v6, :cond_f

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lr/g;->J0:F

    goto/16 :goto_1

    :cond_f
    const/16 v6, 0x25

    if-ne v5, v6, :cond_10

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lr/g;->L0:F

    goto/16 :goto_1

    :cond_10
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_11

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lr/g;->N0:F

    goto/16 :goto_1

    :cond_11
    const/16 v6, 0x27

    if-ne v5, v6, :cond_12

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lr/g;->M0:F

    goto :goto_1

    :cond_12
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_13

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lr/g;->O0:F

    goto :goto_1

    :cond_13
    const/16 v6, 0x33

    if-ne v5, v6, :cond_14

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v6, Lr/g;->K0:F

    goto :goto_1

    :cond_14
    const/16 v6, 0x29

    if-ne v5, v6, :cond_15

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->R0:I

    goto :goto_1

    :cond_15
    const/16 v6, 0x32

    if-ne v5, v6, :cond_16

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->S0:I

    goto :goto_1

    :cond_16
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_17

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->P0:I

    goto :goto_1

    :cond_17
    const/16 v6, 0x34

    if-ne v5, v6, :cond_18

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v6, Lr/g;->Q0:I

    goto :goto_1

    :cond_18
    const/16 v6, 0x31

    if-ne v5, v6, :cond_19

    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v6, Lr/g;->U0:I

    :cond_19
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1b
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput-object p1, p0, Lu/c;->s:Lr/i;

    invoke-virtual {p0}, Lu/c;->i()V

    return-void
.end method


# virtual methods
.method public final h(Lr/d;Z)V
    .locals 2

    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iget v0, p1, Lr/g;->u0:I

    if-gtz v0, :cond_1

    iget v1, p1, Lr/g;->v0:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget p2, p1, Lr/g;->v0:I

    iput p2, p1, Lr/g;->w0:I

    iput v0, p1, Lr/g;->x0:I

    return-void

    :cond_2
    iput v0, p1, Lr/g;->w0:I

    iget p2, p1, Lr/g;->v0:I

    iput p2, p1, Lr/g;->x0:I

    return-void
.end method

.method public final j(Lr/g;II)V
    .locals 38

    move-object/from16 v2, p1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    const/4 v13, 0x0

    if-eqz v2, :cond_7a

    iget-object v14, v2, Lr/d;->p0:[I

    iget-object v15, v2, Lr/d;->J:Lr/c;

    iget-object v1, v2, Lr/d;->I:Lr/c;

    iget-object v3, v2, Lr/d;->K:Lr/c;

    iget-object v4, v2, Lr/d;->L:Lr/c;

    iget-object v5, v2, Lr/g;->W0:Ljava/util/ArrayList;

    iget v6, v2, Lr/i;->r0:I

    if-lez v6, :cond_8

    iget-object v6, v2, Lr/g;->B0:Ls/b;

    iget-object v7, v2, Lr/d;->T:Lr/d;

    if-eqz v7, :cond_0

    check-cast v7, Lr/e;

    iget-object v7, v7, Lr/e;->u0:Lu/f;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    iput v13, v2, Lr/g;->z0:I

    iput v13, v2, Lr/g;->A0:I

    iput-boolean v13, v2, Lr/g;->y0:Z

    goto/16 :goto_42

    :cond_1
    move v8, v13

    :goto_1
    iget v13, v2, Lr/i;->r0:I

    if-ge v8, v13, :cond_8

    iget-object v13, v2, Lr/i;->q0:[Lr/d;

    aget-object v13, v13, v8

    if-nez v13, :cond_2

    move-object/from16 v19, v1

    :goto_2
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move/from16 v23, v8

    goto :goto_3

    :cond_2
    move-object/from16 v19, v1

    instance-of v1, v13, Lr/h;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v20, v3

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lr/d;->j(I)I

    move-result v3

    move-object/from16 v21, v4

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lr/d;->j(I)I

    move-result v4

    const/4 v1, 0x3

    move-object/from16 v22, v5

    if-ne v3, v1, :cond_4

    iget v5, v13, Lr/d;->r:I

    move/from16 v23, v8

    const/4 v8, 0x1

    if-eq v5, v8, :cond_5

    if-ne v4, v1, :cond_5

    iget v5, v13, Lr/d;->s:I

    if-eq v5, v8, :cond_5

    goto :goto_3

    :cond_4
    move/from16 v23, v8

    :cond_5
    if-ne v3, v1, :cond_6

    const/4 v3, 0x2

    :cond_6
    if-ne v4, v1, :cond_7

    const/4 v4, 0x2

    :cond_7
    iput v3, v6, Ls/b;->a:I

    iput v4, v6, Ls/b;->b:I

    invoke-virtual {v13}, Lr/d;->q()I

    move-result v1

    iput v1, v6, Ls/b;->c:I

    invoke-virtual {v13}, Lr/d;->k()I

    move-result v1

    iput v1, v6, Ls/b;->d:I

    invoke-virtual {v7, v13, v6}, Lu/f;->b(Lr/d;Ls/b;)V

    iget v1, v6, Ls/b;->e:I

    invoke-virtual {v13, v1}, Lr/d;->O(I)V

    iget v1, v6, Ls/b;->f:I

    invoke-virtual {v13, v1}, Lr/d;->L(I)V

    iget v1, v6, Ls/b;->g:I

    invoke-virtual {v13, v1}, Lr/d;->I(I)V

    :goto_3
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v1, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    goto :goto_1

    :cond_8
    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    iget v13, v2, Lr/g;->w0:I

    iget v1, v2, Lr/g;->x0:I

    iget v3, v2, Lr/g;->s0:I

    iget v4, v2, Lr/g;->t0:I

    const/4 v5, 0x2

    new-array v6, v5, [I

    sub-int v5, v10, v13

    sub-int/2addr v5, v1

    iget v7, v2, Lr/g;->V0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    sub-int v5, v12, v3

    sub-int/2addr v5, v4

    :cond_9
    move v8, v5

    const/4 v5, -0x1

    if-nez v7, :cond_b

    iget v7, v2, Lr/g;->D0:I

    if-ne v7, v5, :cond_a

    const/4 v7, 0x0

    iput v7, v2, Lr/g;->D0:I

    :goto_4
    move/from16 v23, v1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    :goto_5
    iget v1, v2, Lr/g;->E0:I

    if-ne v1, v5, :cond_d

    iput v7, v2, Lr/g;->E0:I

    goto :goto_6

    :cond_b
    move/from16 v23, v1

    const/4 v7, 0x0

    iget v1, v2, Lr/g;->D0:I

    if-ne v1, v5, :cond_c

    iput v7, v2, Lr/g;->D0:I

    :cond_c
    iget v1, v2, Lr/g;->E0:I

    if-ne v1, v5, :cond_d

    iput v7, v2, Lr/g;->E0:I

    :cond_d
    :goto_6
    iget-object v1, v2, Lr/i;->q0:[Lr/d;

    move-object/from16 v24, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_7
    iget v1, v2, Lr/i;->r0:I

    move/from16 v25, v3

    const/16 v3, 0x8

    if-ge v5, v1, :cond_f

    iget-object v1, v2, Lr/i;->q0:[Lr/d;

    aget-object v1, v1, v5

    iget v1, v1, Lr/d;->g0:I

    if-ne v1, v3, :cond_e

    add-int/lit8 v7, v7, 0x1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v25

    goto :goto_7

    :cond_f
    if-lez v7, :cond_12

    sub-int/2addr v1, v7

    new-array v1, v1, [Lr/d;

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_8
    iget v3, v2, Lr/i;->r0:I

    if-ge v5, v3, :cond_11

    iget-object v3, v2, Lr/i;->q0:[Lr/d;

    aget-object v3, v3, v5

    move-object/from16 v24, v1

    iget v1, v3, Lr/d;->g0:I

    move-object/from16 v27, v3

    const/16 v3, 0x8

    if-eq v1, v3, :cond_10

    aput-object v27, v24, v7

    add-int/lit8 v7, v7, 0x1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v24

    goto :goto_8

    :cond_11
    move-object/from16 v24, v1

    move v3, v7

    goto :goto_9

    :cond_12
    move v3, v1

    move-object/from16 v1, v24

    :goto_9
    iput-object v1, v2, Lr/g;->a1:[Lr/d;

    iput v3, v2, Lr/g;->b1:I

    iget v5, v2, Lr/g;->T0:I

    if-eqz v5, :cond_6f

    const/4 v7, 0x1

    if-eq v5, v7, :cond_55

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2e

    const/4 v7, 0x3

    if-eq v5, v7, :cond_13

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v17, v13

    move/from16 v22, v23

    move/from16 v34, v25

    :goto_a
    const/4 v12, 0x1

    :goto_b
    const/16 v18, 0x0

    goto/16 :goto_3e

    :cond_13
    move v5, v3

    iget v3, v2, Lr/g;->V0:I

    if-nez v5, :cond_14

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v17, v13

    move/from16 v22, v23

    move/from16 v34, v25

    const/16 p2, 0x1

    goto/16 :goto_1b

    :cond_14
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v24, v1

    new-instance v1, Lr/f;

    move/from16 v16, v4

    iget-object v4, v2, Lr/d;->I:Lr/c;

    move/from16 v26, v5

    iget-object v5, v2, Lr/d;->J:Lr/c;

    move-object/from16 v27, v6

    iget-object v6, v2, Lr/d;->K:Lr/c;

    move/from16 v28, v7

    iget-object v7, v2, Lr/d;->L:Lr/c;

    move/from16 v17, v13

    move/from16 v35, v16

    move-object/from16 v13, v22

    move/from16 v22, v23

    move/from16 v34, v25

    move-object/from16 v36, v27

    move/from16 v0, v28

    const/16 p2, 0x1

    move-object/from16 v23, v14

    move-object/from16 v14, v24

    move-object/from16 v24, v15

    move/from16 v15, v26

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_1c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v4, v15, :cond_1b

    add-int/lit8 v5, v5, 0x1

    aget-object v0, v14, v4

    invoke-virtual {v2, v0, v8}, Lr/g;->U(Lr/d;I)I

    move-result v16

    move/from16 v26, v3

    iget-object v3, v0, Lr/d;->p0:[I

    const/16 v18, 0x0

    aget v3, v3, v18

    move/from16 v27, v4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_15

    add-int/lit8 v6, v6, 0x1

    :cond_15
    move/from16 v28, v6

    if-eq v7, v8, :cond_16

    iget v3, v2, Lr/g;->P0:I

    add-int/2addr v3, v7

    add-int v3, v3, v16

    if-le v3, v8, :cond_17

    :cond_16
    iget-object v3, v1, Lr/f;->b:Lr/d;

    if-eqz v3, :cond_17

    move/from16 v3, p2

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_18

    if-lez v27, :cond_18

    iget v4, v2, Lr/g;->U0:I

    if-lez v4, :cond_18

    if-le v5, v4, :cond_18

    move/from16 v3, p2

    :cond_18
    if-eqz v3, :cond_1a

    new-instance v1, Lr/f;

    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v5, v2, Lr/d;->J:Lr/c;

    iget-object v6, v2, Lr/d;->K:Lr/c;

    iget-object v7, v2, Lr/d;->L:Lr/c;

    move/from16 v37, v12

    move/from16 v3, v26

    move/from16 v12, v27

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    iput v12, v1, Lr/f;->n:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, p2

    :cond_19
    move/from16 v7, v16

    goto :goto_e

    :cond_1a
    move/from16 v37, v12

    move/from16 v3, v26

    move/from16 v12, v27

    if-lez v12, :cond_19

    iget v4, v2, Lr/g;->P0:I

    add-int v4, v4, v16

    add-int/2addr v4, v7

    move v7, v4

    :goto_e
    invoke-virtual {v1, v0}, Lr/f;->a(Lr/d;)V

    add-int/lit8 v4, v12, 0x1

    move/from16 v6, v28

    move/from16 v12, v37

    const/4 v0, 0x3

    goto :goto_c

    :cond_1b
    move/from16 v37, v12

    goto/16 :goto_12

    :cond_1c
    move/from16 v37, v12

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_f
    if-ge v0, v15, :cond_23

    add-int/lit8 v4, v4, 0x1

    aget-object v12, v14, v0

    invoke-virtual {v2, v12, v8}, Lr/g;->T(Lr/d;I)I

    move-result v16

    iget-object v7, v12, Lr/d;->p0:[I

    aget v7, v7, p2

    move/from16 v26, v3

    const/4 v3, 0x3

    if-ne v7, v3, :cond_1d

    add-int/lit8 v5, v5, 0x1

    :cond_1d
    move/from16 v27, v5

    if-eq v6, v8, :cond_1e

    iget v3, v2, Lr/g;->Q0:I

    add-int/2addr v3, v6

    add-int v3, v3, v16

    if-le v3, v8, :cond_1f

    :cond_1e
    iget-object v3, v1, Lr/f;->b:Lr/d;

    if-eqz v3, :cond_1f

    move/from16 v3, p2

    goto :goto_10

    :cond_1f
    const/4 v3, 0x0

    :goto_10
    if-nez v3, :cond_20

    if-lez v0, :cond_20

    iget v5, v2, Lr/g;->U0:I

    if-lez v5, :cond_20

    if-le v4, v5, :cond_20

    move/from16 v3, p2

    :cond_20
    if-eqz v3, :cond_22

    new-instance v1, Lr/f;

    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v5, v2, Lr/d;->J:Lr/c;

    iget-object v6, v2, Lr/d;->K:Lr/c;

    iget-object v7, v2, Lr/d;->L:Lr/c;

    move/from16 v3, v26

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    iput v0, v1, Lr/f;->n:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, p2

    :cond_21
    move/from16 v6, v16

    goto :goto_11

    :cond_22
    move/from16 v3, v26

    if-lez v0, :cond_21

    iget v5, v2, Lr/g;->Q0:I

    add-int v5, v5, v16

    add-int/2addr v5, v6

    move v6, v5

    :goto_11
    invoke-virtual {v1, v12}, Lr/f;->a(Lr/d;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v27

    goto :goto_f

    :cond_23
    move v6, v5

    :goto_12
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v2, Lr/g;->w0:I

    iget v4, v2, Lr/g;->s0:I

    iget v5, v2, Lr/g;->x0:I

    iget v7, v2, Lr/g;->t0:I

    const/16 v18, 0x0

    aget v12, v23, v18

    const/4 v14, 0x2

    if-eq v12, v14, :cond_25

    aget v12, v23, p2

    if-ne v12, v14, :cond_24

    goto :goto_13

    :cond_24
    const/4 v12, 0x0

    goto :goto_14

    :cond_25
    :goto_13
    move/from16 v12, p2

    :goto_14
    if-lez v6, :cond_27

    if-eqz v12, :cond_27

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v0, :cond_27

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr/f;

    if-nez v3, :cond_26

    invoke-virtual {v12}, Lr/f;->d()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lr/f;->e(I)V

    goto :goto_16

    :cond_26
    invoke-virtual {v12}, Lr/f;->c()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lr/f;->e(I)V

    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_27
    move/from16 v29, v1

    move/from16 v30, v4

    move/from16 v31, v5

    move/from16 v32, v7

    move-object/from16 v25, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v26, v24

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    if-ge v1, v0, :cond_2d

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/f;

    if-nez v3, :cond_2a

    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_28

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/f;

    iget-object v7, v7, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->J:Lr/c;

    move-object/from16 v28, v7

    const/16 v32, 0x0

    goto :goto_18

    :cond_28
    iget v7, v2, Lr/g;->t0:I

    move/from16 v32, v7

    move-object/from16 v28, v21

    :goto_18
    iget-object v7, v6, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->L:Lr/c;

    move/from16 v24, v3

    move-object/from16 v23, v6

    move/from16 v33, v8

    invoke-virtual/range {v23 .. v33}, Lr/f;->f(ILr/c;Lr/c;Lr/c;Lr/c;IIIII)V

    invoke-virtual {v6}, Lr/f;->d()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v6}, Lr/f;->c()I

    move-result v6

    add-int/2addr v6, v5

    if-lez v1, :cond_29

    iget v5, v2, Lr/g;->Q0:I

    add-int/2addr v6, v5

    :cond_29
    move v5, v6

    move-object/from16 v26, v7

    const/16 v30, 0x0

    goto :goto_1a

    :cond_2a
    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_2b

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/f;

    iget-object v7, v7, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->I:Lr/c;

    move-object/from16 v27, v7

    const/16 v31, 0x0

    goto :goto_19

    :cond_2b
    iget v7, v2, Lr/g;->x0:I

    move/from16 v31, v7

    move-object/from16 v27, v20

    :goto_19
    iget-object v7, v6, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->K:Lr/c;

    move/from16 v24, v3

    move-object/from16 v23, v6

    move/from16 v33, v8

    invoke-virtual/range {v23 .. v33}, Lr/f;->f(ILr/c;Lr/c;Lr/c;Lr/c;IIIII)V

    invoke-virtual/range {v23 .. v23}, Lr/f;->d()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual/range {v23 .. v23}, Lr/f;->c()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v1, :cond_2c

    iget v5, v2, Lr/g;->P0:I

    add-int/2addr v6, v5

    :cond_2c
    move v5, v4

    move v4, v6

    move-object/from16 v25, v7

    const/16 v29, 0x0

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_17

    :cond_2d
    const/16 v18, 0x0

    aput v4, v36, v18

    aput v5, v36, p2

    :goto_1b
    move/from16 v12, p2

    goto/16 :goto_b

    :cond_2e
    move-object v14, v1

    move v15, v3

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v17, v13

    move/from16 v22, v23

    move/from16 v34, v25

    const/16 p2, 0x1

    iget v0, v2, Lr/g;->V0:I

    if-nez v0, :cond_34

    iget v1, v2, Lr/g;->U0:I

    if-gtz v1, :cond_33

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v1, v15, :cond_32

    if-lez v1, :cond_2f

    iget v5, v2, Lr/g;->P0:I

    add-int/2addr v3, v5

    :cond_2f
    aget-object v5, v14, v1

    if-nez v5, :cond_30

    goto :goto_1d

    :cond_30
    invoke-virtual {v2, v5, v8}, Lr/g;->U(Lr/d;I)I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v8, :cond_31

    goto :goto_1e

    :cond_31
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_32
    :goto_1e
    const/4 v1, 0x0

    goto :goto_22

    :cond_33
    move v4, v1

    goto :goto_1e

    :cond_34
    iget v1, v2, Lr/g;->U0:I

    if-gtz v1, :cond_39

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1f
    if-ge v1, v15, :cond_38

    if-lez v1, :cond_35

    iget v5, v2, Lr/g;->Q0:I

    add-int/2addr v3, v5

    :cond_35
    aget-object v5, v14, v1

    if-nez v5, :cond_36

    goto :goto_20

    :cond_36
    invoke-virtual {v2, v5, v8}, Lr/g;->T(Lr/d;I)I

    move-result v5

    add-int/2addr v5, v3

    if-le v5, v8, :cond_37

    goto :goto_21

    :cond_37
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_38
    :goto_21
    move v1, v4

    :cond_39
    const/4 v4, 0x0

    :goto_22
    iget-object v3, v2, Lr/g;->Z0:[I

    if-nez v3, :cond_3a

    const/4 v5, 0x2

    new-array v3, v5, [I

    iput-object v3, v2, Lr/g;->Z0:[I

    :cond_3a
    if-nez v1, :cond_3b

    move/from16 v7, p2

    if-eq v0, v7, :cond_3c

    :cond_3b
    if-nez v4, :cond_3d

    if-nez v0, :cond_3d

    :cond_3c
    const/4 v3, 0x1

    goto :goto_23

    :cond_3d
    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_54

    if-nez v0, :cond_3e

    int-to-float v1, v15

    int-to-float v5, v4

    div-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_24

    :cond_3e
    int-to-float v4, v15

    int-to-float v5, v1

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_24
    iget-object v5, v2, Lr/g;->Y0:[Lr/d;

    if-eqz v5, :cond_3f

    array-length v6, v5

    if-ge v6, v4, :cond_40

    :cond_3f
    const/4 v6, 0x0

    goto :goto_25

    :cond_40
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    :goto_25
    new-array v5, v4, [Lr/d;

    iput-object v5, v2, Lr/g;->Y0:[Lr/d;

    :goto_26
    iget-object v5, v2, Lr/g;->X0:[Lr/d;

    if-eqz v5, :cond_42

    array-length v7, v5

    if-ge v7, v1, :cond_41

    goto :goto_27

    :cond_41
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_28

    :cond_42
    :goto_27
    new-array v5, v1, [Lr/d;

    iput-object v5, v2, Lr/g;->X0:[Lr/d;

    :goto_28
    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_4b

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v1, :cond_4a

    mul-int v7, v6, v4

    add-int/2addr v7, v5

    const/4 v12, 0x1

    if-ne v0, v12, :cond_43

    mul-int v7, v5, v1

    add-int/2addr v7, v6

    :cond_43
    array-length v12, v14

    if-lt v7, v12, :cond_44

    goto :goto_2b

    :cond_44
    aget-object v7, v14, v7

    if-nez v7, :cond_45

    goto :goto_2b

    :cond_45
    invoke-virtual {v2, v7, v8}, Lr/g;->U(Lr/d;I)I

    move-result v12

    iget-object v13, v2, Lr/g;->Y0:[Lr/d;

    aget-object v13, v13, v5

    if-eqz v13, :cond_46

    invoke-virtual {v13}, Lr/d;->q()I

    move-result v13

    if-ge v13, v12, :cond_47

    :cond_46
    iget-object v12, v2, Lr/g;->Y0:[Lr/d;

    aput-object v7, v12, v5

    :cond_47
    invoke-virtual {v2, v7, v8}, Lr/g;->T(Lr/d;I)I

    move-result v12

    iget-object v13, v2, Lr/g;->X0:[Lr/d;

    aget-object v13, v13, v6

    if-eqz v13, :cond_48

    invoke-virtual {v13}, Lr/d;->k()I

    move-result v13

    if-ge v13, v12, :cond_49

    :cond_48
    iget-object v12, v2, Lr/g;->X0:[Lr/d;

    aput-object v7, v12, v6

    :cond_49
    :goto_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_4b
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2c
    if-ge v5, v4, :cond_4e

    iget-object v7, v2, Lr/g;->Y0:[Lr/d;

    aget-object v7, v7, v5

    if-eqz v7, :cond_4d

    if-lez v5, :cond_4c

    iget v12, v2, Lr/g;->P0:I

    add-int/2addr v6, v12

    :cond_4c
    invoke-virtual {v2, v7, v8}, Lr/g;->U(Lr/d;I)I

    move-result v7

    add-int/2addr v7, v6

    move v6, v7

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_4e
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2d
    if-ge v5, v1, :cond_51

    iget-object v12, v2, Lr/g;->X0:[Lr/d;

    aget-object v12, v12, v5

    if-eqz v12, :cond_50

    if-lez v5, :cond_4f

    iget v13, v2, Lr/g;->Q0:I

    add-int/2addr v7, v13

    :cond_4f
    invoke-virtual {v2, v12, v8}, Lr/g;->T(Lr/d;I)I

    move-result v12

    add-int/2addr v12, v7

    move v7, v12

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_51
    const/16 v18, 0x0

    aput v6, v36, v18

    const/4 v12, 0x1

    aput v7, v36, v12

    if-nez v0, :cond_53

    if-le v6, v8, :cond_52

    if-le v4, v12, :cond_52

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_23

    :cond_52
    move v3, v12

    goto/16 :goto_23

    :cond_53
    if-le v7, v8, :cond_52

    if-le v1, v12, :cond_52

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_23

    :cond_54
    const/4 v12, 0x1

    iget-object v0, v2, Lr/g;->Z0:[I

    const/16 v18, 0x0

    aput v4, v0, v18

    aput v1, v0, v12

    goto/16 :goto_b

    :cond_55
    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v17, v13

    move-object/from16 v24, v15

    move-object/from16 v13, v22

    move/from16 v22, v23

    move/from16 v34, v25

    move v15, v3

    move-object/from16 v23, v14

    move-object v14, v1

    iget v3, v2, Lr/g;->V0:I

    if-nez v15, :cond_56

    goto/16 :goto_a

    :cond_56
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lr/f;

    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v5, v2, Lr/d;->J:Lr/c;

    iget-object v6, v2, Lr/d;->K:Lr/c;

    iget-object v7, v2, Lr/d;->L:Lr/c;

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_5d

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2e
    if-ge v0, v15, :cond_64

    aget-object v12, v14, v0

    invoke-virtual {v2, v12, v8}, Lr/g;->U(Lr/d;I)I

    move-result v16

    iget-object v6, v12, Lr/d;->p0:[I

    const/16 v18, 0x0

    aget v6, v6, v18

    const/4 v7, 0x3

    if-ne v6, v7, :cond_57

    add-int/lit8 v4, v4, 0x1

    :cond_57
    move/from16 v26, v4

    if-eq v5, v8, :cond_58

    iget v4, v2, Lr/g;->P0:I

    add-int/2addr v4, v5

    add-int v4, v4, v16

    if-le v4, v8, :cond_59

    :cond_58
    iget-object v4, v1, Lr/f;->b:Lr/d;

    if-eqz v4, :cond_59

    const/4 v4, 0x1

    goto :goto_2f

    :cond_59
    const/4 v4, 0x0

    :goto_2f
    if-nez v4, :cond_5a

    if-lez v0, :cond_5a

    iget v6, v2, Lr/g;->U0:I

    if-lez v6, :cond_5a

    rem-int v6, v0, v6

    if-nez v6, :cond_5a

    const/4 v4, 0x1

    :cond_5a
    if-eqz v4, :cond_5c

    new-instance v1, Lr/f;

    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v5, v2, Lr/d;->J:Lr/c;

    iget-object v6, v2, Lr/d;->K:Lr/c;

    iget-object v7, v2, Lr/d;->L:Lr/c;

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    iput v0, v1, Lr/f;->n:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5b
    move/from16 v5, v16

    goto :goto_30

    :cond_5c
    if-lez v0, :cond_5b

    iget v4, v2, Lr/g;->P0:I

    add-int v4, v4, v16

    add-int/2addr v4, v5

    move v5, v4

    :goto_30
    invoke-virtual {v1, v12}, Lr/f;->a(Lr/d;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v26

    goto :goto_2e

    :cond_5d
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_31
    if-ge v0, v15, :cond_64

    aget-object v12, v14, v0

    invoke-virtual {v2, v12, v8}, Lr/g;->T(Lr/d;I)I

    move-result v16

    iget-object v6, v12, Lr/d;->p0:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5e

    add-int/lit8 v4, v4, 0x1

    :cond_5e
    move/from16 v26, v4

    if-eq v5, v8, :cond_5f

    iget v4, v2, Lr/g;->Q0:I

    add-int/2addr v4, v5

    add-int v4, v4, v16

    if-le v4, v8, :cond_60

    :cond_5f
    iget-object v4, v1, Lr/f;->b:Lr/d;

    if-eqz v4, :cond_60

    const/4 v4, 0x1

    goto :goto_32

    :cond_60
    const/4 v4, 0x0

    :goto_32
    if-nez v4, :cond_61

    if-lez v0, :cond_61

    iget v6, v2, Lr/g;->U0:I

    if-lez v6, :cond_61

    rem-int v6, v0, v6

    if-nez v6, :cond_61

    const/4 v4, 0x1

    :cond_61
    if-eqz v4, :cond_63

    new-instance v1, Lr/f;

    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v5, v2, Lr/d;->J:Lr/c;

    iget-object v6, v2, Lr/d;->K:Lr/c;

    move/from16 v28, v7

    iget-object v7, v2, Lr/d;->L:Lr/c;

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    iput v0, v1, Lr/f;->n:I

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62
    move/from16 v5, v16

    goto :goto_33

    :cond_63
    move/from16 v28, v7

    if-lez v0, :cond_62

    iget v4, v2, Lr/g;->Q0:I

    add-int v4, v4, v16

    add-int/2addr v4, v5

    move v5, v4

    :goto_33
    invoke-virtual {v1, v12}, Lr/f;->a(Lr/d;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v26

    goto :goto_31

    :cond_64
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, v2, Lr/g;->w0:I

    iget v5, v2, Lr/g;->s0:I

    iget v6, v2, Lr/g;->x0:I

    iget v7, v2, Lr/g;->t0:I

    const/16 v18, 0x0

    aget v12, v23, v18

    const/4 v14, 0x2

    if-eq v12, v14, :cond_66

    const/4 v12, 0x1

    aget v15, v23, v12

    if-ne v15, v14, :cond_65

    goto :goto_34

    :cond_65
    const/4 v12, 0x0

    goto :goto_35

    :cond_66
    :goto_34
    const/4 v12, 0x1

    :goto_35
    if-lez v4, :cond_68

    if-eqz v12, :cond_68

    const/4 v4, 0x0

    :goto_36
    if-ge v4, v0, :cond_68

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr/f;

    if-nez v3, :cond_67

    invoke-virtual {v12}, Lr/f;->d()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lr/f;->e(I)V

    goto :goto_37

    :cond_67
    invoke-virtual {v12}, Lr/f;->c()I

    move-result v14

    sub-int v14, v8, v14

    invoke-virtual {v12, v14}, Lr/f;->e(I)V

    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_68
    move/from16 v29, v1

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 v25, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v26, v24

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_38
    if-ge v1, v0, :cond_6e

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/f;

    if-nez v3, :cond_6b

    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_69

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/f;

    iget-object v7, v7, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->J:Lr/c;

    move-object/from16 v28, v7

    const/16 v32, 0x0

    goto :goto_39

    :cond_69
    iget v7, v2, Lr/g;->t0:I

    move/from16 v32, v7

    move-object/from16 v28, v21

    :goto_39
    iget-object v7, v6, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->L:Lr/c;

    move/from16 v24, v3

    move-object/from16 v23, v6

    move/from16 v33, v8

    invoke-virtual/range {v23 .. v33}, Lr/f;->f(ILr/c;Lr/c;Lr/c;Lr/c;IIIII)V

    invoke-virtual {v6}, Lr/f;->d()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v6}, Lr/f;->c()I

    move-result v6

    add-int/2addr v6, v5

    if-lez v1, :cond_6a

    iget v5, v2, Lr/g;->Q0:I

    add-int/2addr v6, v5

    :cond_6a
    move v5, v6

    move-object/from16 v26, v7

    const/16 v30, 0x0

    goto :goto_3b

    :cond_6b
    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_6c

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/f;

    iget-object v7, v7, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->I:Lr/c;

    move-object/from16 v27, v7

    const/16 v31, 0x0

    goto :goto_3a

    :cond_6c
    iget v7, v2, Lr/g;->x0:I

    move/from16 v31, v7

    move-object/from16 v27, v20

    :goto_3a
    iget-object v7, v6, Lr/f;->b:Lr/d;

    iget-object v7, v7, Lr/d;->K:Lr/c;

    move/from16 v24, v3

    move-object/from16 v23, v6

    move/from16 v33, v8

    invoke-virtual/range {v23 .. v33}, Lr/f;->f(ILr/c;Lr/c;Lr/c;Lr/c;IIIII)V

    invoke-virtual/range {v23 .. v23}, Lr/f;->d()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual/range {v23 .. v23}, Lr/f;->c()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v1, :cond_6d

    iget v5, v2, Lr/g;->P0:I

    add-int/2addr v6, v5

    :cond_6d
    move v5, v4

    move v4, v6

    move-object/from16 v25, v7

    const/16 v29, 0x0

    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_38

    :cond_6e
    const/16 v18, 0x0

    aput v4, v36, v18

    const/4 v12, 0x1

    aput v5, v36, v12

    goto/16 :goto_a

    :cond_6f
    move-object v14, v1

    move v15, v3

    move/from16 v35, v4

    move-object/from16 v36, v6

    move/from16 v37, v12

    move/from16 v17, v13

    move-object/from16 v13, v22

    move/from16 v22, v23

    move/from16 v34, v25

    iget v3, v2, Lr/g;->V0:I

    if-nez v15, :cond_70

    goto/16 :goto_a

    :cond_70
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_71

    new-instance v1, Lr/f;

    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v5, v2, Lr/d;->J:Lr/c;

    iget-object v6, v2, Lr/d;->K:Lr/c;

    iget-object v7, v2, Lr/d;->L:Lr/c;

    invoke-direct/range {v1 .. v8}, Lr/f;-><init>(Lr/g;ILr/c;Lr/c;Lr/c;Lr/c;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_71
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/f;

    iput v1, v0, Lr/f;->c:I

    const/4 v6, 0x0

    iput-object v6, v0, Lr/f;->b:Lr/d;

    iput v1, v0, Lr/f;->l:I

    iput v1, v0, Lr/f;->m:I

    iput v1, v0, Lr/f;->n:I

    iput v1, v0, Lr/f;->o:I

    iput v1, v0, Lr/f;->p:I

    iget-object v1, v2, Lr/d;->I:Lr/c;

    iget-object v4, v2, Lr/d;->J:Lr/c;

    iget-object v5, v2, Lr/d;->K:Lr/c;

    iget-object v6, v2, Lr/d;->L:Lr/c;

    iget v7, v2, Lr/g;->w0:I

    iget v12, v2, Lr/g;->s0:I

    iget v13, v2, Lr/g;->x0:I

    move-object/from16 v23, v0

    iget v0, v2, Lr/g;->t0:I

    move/from16 v32, v0

    move-object/from16 v25, v1

    move/from16 v24, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move/from16 v29, v7

    move/from16 v33, v8

    move/from16 v30, v12

    move/from16 v31, v13

    invoke-virtual/range {v23 .. v33}, Lr/f;->f(ILr/c;Lr/c;Lr/c;Lr/c;IIIII)V

    move-object/from16 v1, v23

    :goto_3c
    const/4 v0, 0x0

    :goto_3d
    if-ge v0, v15, :cond_72

    aget-object v3, v14, v0

    invoke-virtual {v1, v3}, Lr/f;->a(Lr/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_72
    invoke-virtual {v1}, Lr/f;->d()I

    move-result v0

    const/16 v18, 0x0

    aput v0, v36, v18

    invoke-virtual {v1}, Lr/f;->c()I

    move-result v0

    const/4 v12, 0x1

    aput v0, v36, v12

    :goto_3e
    aget v0, v36, v18

    add-int v0, v0, v17

    add-int v0, v0, v22

    aget v1, v36, v12

    add-int v1, v1, v34

    add-int v1, v1, v35

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v9, v4, :cond_73

    goto :goto_3f

    :cond_73
    if-ne v9, v3, :cond_74

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3f

    :cond_74
    if-nez v9, :cond_75

    move v10, v0

    goto :goto_3f

    :cond_75
    const/4 v10, 0x0

    :goto_3f
    if-ne v11, v4, :cond_76

    move/from16 v0, v37

    goto :goto_40

    :cond_76
    if-ne v11, v3, :cond_77

    move/from16 v0, v37

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_40

    :cond_77
    if-nez v11, :cond_78

    move v0, v1

    goto :goto_40

    :cond_78
    const/4 v0, 0x0

    :goto_40
    iput v10, v2, Lr/g;->z0:I

    iput v0, v2, Lr/g;->A0:I

    invoke-virtual {v2, v10}, Lr/d;->O(I)V

    invoke-virtual {v2, v0}, Lr/d;->L(I)V

    iget v0, v2, Lr/i;->r0:I

    if-lez v0, :cond_79

    move v13, v12

    goto :goto_41

    :cond_79
    const/4 v13, 0x0

    :goto_41
    iput-boolean v13, v2, Lr/g;->y0:Z

    :goto_42
    iget v0, v2, Lr/g;->z0:I

    iget v1, v2, Lr/g;->A0:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_7a
    move-object/from16 v2, p0

    move v1, v13

    invoke-virtual {v2, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/constraintlayout/helper/widget/Flow;->j(Lr/g;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->L0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->F0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->M0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->G0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->R0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->J0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->P0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->D0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->N0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->H0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->O0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->I0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->U0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->V0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->s0:I

    iput p1, v0, Lr/g;->t0:I

    iput p1, v0, Lr/g;->u0:I

    iput p1, v0, Lr/g;->v0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->t0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->w0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->x0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->s0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->S0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->K0:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->Q0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->E0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Flow;->y:Lr/g;

    iput p1, v0, Lr/g;->T0:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
