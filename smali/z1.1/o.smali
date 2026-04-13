.class public final Lz1/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public b:Lz1/l;

.field public q:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lz1/o;->b:Lz1/l;

    iget-object v2, v0, Lz1/o;->q:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v3, Lz1/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    if-nez v3, :cond_0

    return v7

    :cond_0
    invoke-static {}, Lz1/p;->b()Ln/e;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, v5}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v6, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lz1/n;

    invoke-direct {v5, v0, v3}, Lz1/n;-><init>(Lz1/o;Ln/e;)V

    invoke-virtual {v1, v5}, Lz1/l;->a(Lz1/j;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lz1/l;->g(Landroid/view/ViewGroup;Z)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v3

    :goto_1
    if-ge v8, v5, :cond_3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lz1/l;

    invoke-virtual {v9, v2}, Lz1/l;->x(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lz1/l;->z:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lz1/l;->A:Ljava/util/ArrayList;

    iget-object v5, v1, Lz1/l;->v:LK1/c;

    iget-object v6, v1, Lz1/l;->w:LK1/c;

    new-instance v8, Ln/e;

    iget-object v9, v5, LK1/c;->q:Ljava/lang/Object;

    check-cast v9, Ln/e;

    invoke-direct {v8, v9}, Ln/e;-><init>(Ln/e;)V

    new-instance v9, Ln/e;

    iget-object v10, v6, LK1/c;->q:Ljava/lang/Object;

    check-cast v10, Ln/e;

    invoke-direct {v9, v10}, Ln/e;-><init>(Ln/e;)V

    move v10, v3

    :goto_2
    iget-object v11, v1, Lz1/l;->y:[I

    array-length v12, v11

    if-ge v10, v12, :cond_11

    aget v11, v11, v10

    if-eq v11, v7, :cond_e

    const/4 v12, 0x2

    if-eq v11, v12, :cond_c

    const/4 v12, 0x3

    if-eq v11, v12, :cond_a

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move/from16 v17, v7

    move-object v7, v8

    goto/16 :goto_8

    :cond_5
    iget-object v11, v5, LK1/c;->s:Ljava/lang/Object;

    check-cast v11, Ln/i;

    iget-object v12, v6, LK1/c;->s:Ljava/lang/Object;

    check-cast v12, Ln/i;

    invoke-virtual {v11}, Ln/i;->e()I

    move-result v13

    move v14, v3

    :goto_3
    if-ge v14, v13, :cond_4

    invoke-virtual {v11, v14}, Ln/i;->f(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_8

    invoke-virtual {v1, v15}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_8

    iget-boolean v3, v11, Ln/i;->b:Z

    if-eqz v3, :cond_6

    invoke-virtual {v11}, Ln/i;->b()V

    :cond_6
    iget-object v3, v11, Ln/i;->q:[J

    move/from16 v17, v7

    move-object/from16 v18, v8

    aget-wide v7, v3, v14

    invoke-virtual {v12, v7, v8, v4}, Ln/i;->c(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v1, v3}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v7, v18

    invoke-virtual {v7, v15, v4}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz1/t;

    invoke-virtual {v9, v3, v4}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Lz1/t;

    if-eqz v8, :cond_9

    if-eqz v4, :cond_9

    iget-object v0, v1, Lz1/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lz1/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v15}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v3}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move-object/from16 v7, v18

    goto :goto_4

    :cond_8
    move/from16 v17, v7

    move-object v7, v8

    :cond_9
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object v8, v7

    move/from16 v7, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    move/from16 v17, v7

    move-object v7, v8

    iget-object v0, v5, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v3, v6, LK1/c;->r:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v4, :cond_10

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    invoke-virtual {v1, v11}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_b

    invoke-virtual {v1, v12}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz1/t;

    invoke-virtual {v9, v12, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz1/t;

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    iget-object v13, v1, Lz1/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lz1/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    move/from16 v17, v7

    move-object v7, v8

    iget-object v0, v5, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Ln/e;

    iget-object v3, v6, LK1/c;->t:Ljava/lang/Object;

    check-cast v3, Ln/e;

    iget v4, v0, Ln/j;->r:I

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_10

    invoke-virtual {v0, v8}, Ln/j;->l(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_d

    invoke-virtual {v1, v11}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v0, v8}, Ln/j;->h(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_d

    invoke-virtual {v1, v12}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v7, v11, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lz1/t;

    invoke-virtual {v9, v12, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz1/t;

    if-eqz v14, :cond_d

    if-eqz v15, :cond_d

    iget-object v13, v1, Lz1/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v1, Lz1/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v12}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_e
    move/from16 v17, v7

    move-object v7, v8

    iget v0, v7, Ln/j;->r:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_10

    invoke-virtual {v7, v0}, Ln/j;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_f

    invoke-virtual {v1, v3}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v9, v3}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/t;

    if-eqz v3, :cond_f

    iget-object v4, v3, Lz1/t;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v7, v0}, Ln/j;->j(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/t;

    iget-object v8, v1, Lz1/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lz1/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_10
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v8, v7

    move/from16 v7, v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_11
    move/from16 v17, v7

    move-object v7, v8

    const/4 v0, 0x0

    :goto_9
    iget v3, v7, Ln/j;->r:I

    if-ge v0, v3, :cond_13

    invoke-virtual {v7, v0}, Ln/j;->l(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/t;

    iget-object v4, v3, Lz1/t;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v1, Lz1/l;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lz1/l;->A:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_a
    iget v0, v9, Ln/j;->r:I

    if-ge v3, v0, :cond_15

    invoke-virtual {v9, v3}, Ln/j;->l(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/t;

    iget-object v4, v0, Lz1/t;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lz1/l;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lz1/l;->z:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    invoke-static {}, Lz1/l;->o()Ln/e;

    move-result-object v0

    iget v3, v0, Ln/j;->r:I

    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    :goto_b
    if-ltz v3, :cond_1c

    invoke-virtual {v0, v3}, Ln/j;->h(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    if-eqz v5, :cond_1a

    const/4 v13, 0x0

    invoke-virtual {v0, v5, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz1/i;

    if-eqz v6, :cond_1a

    iget-object v7, v6, Lz1/i;->e:Lz1/l;

    iget-object v8, v6, Lz1/i;->a:Landroid/view/View;

    if-eqz v8, :cond_1a

    iget-object v9, v6, Lz1/i;->d:Landroid/view/WindowId;

    invoke-virtual {v4, v9}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v6, v6, Lz1/i;->c:Lz1/t;

    move/from16 v9, v17

    invoke-virtual {v1, v8, v9}, Lz1/l;->q(Landroid/view/View;Z)Lz1/t;

    move-result-object v10

    invoke-virtual {v1, v8, v9}, Lz1/l;->m(Landroid/view/View;Z)Lz1/t;

    move-result-object v11

    if-nez v10, :cond_16

    if-nez v11, :cond_16

    iget-object v9, v1, Lz1/l;->w:LK1/c;

    iget-object v9, v9, LK1/c;->q:Ljava/lang/Object;

    check-cast v9, Ln/e;

    const/4 v13, 0x0

    invoke-virtual {v9, v8, v13}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lz1/t;

    goto :goto_c

    :cond_16
    const/4 v13, 0x0

    :goto_c
    if-nez v10, :cond_17

    if-eqz v11, :cond_1b

    :cond_17
    invoke-virtual {v7, v6, v11}, Lz1/l;->r(Lz1/t;Lz1/t;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v7}, Lz1/l;->n()Lz1/l;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v5}, Landroid/animation/Animator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_d

    :cond_18
    invoke-virtual {v0, v5}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_19
    :goto_d
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    goto :goto_e

    :cond_1a
    const/4 v13, 0x0

    :cond_1b
    :goto_e
    add-int/lit8 v3, v3, -0x1

    const/16 v17, 0x1

    goto :goto_b

    :cond_1c
    iget-object v3, v1, Lz1/l;->v:LK1/c;

    iget-object v4, v1, Lz1/l;->w:LK1/c;

    iget-object v5, v1, Lz1/l;->z:Ljava/util/ArrayList;

    iget-object v6, v1, Lz1/l;->A:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v6}, Lz1/l;->k(Landroid/view/ViewGroup;LK1/c;LK1/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lz1/l;->y()V

    const/16 v17, 0x1

    return v17
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lz1/o;->q:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object v0, Lz1/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lz1/p;->b()Ln/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ln/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lz1/l;

    invoke-virtual {v3, p1}, Lz1/l;->x(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz1/o;->b:Lz1/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lz1/l;->h(Z)V

    return-void
.end method
