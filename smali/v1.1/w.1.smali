.class public final Lv1/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    iput p2, p0, Lv1/w;->b:I

    iput-object p1, p0, Lv1/w;->q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lv1/w;->b:I

    iget-object v2, v0, Lv1/w;->q:Landroidx/recyclerview/widget/RecyclerView;

    packed-switch v1, :pswitch_data_0

    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    if-eqz v1, :cond_b

    check-cast v1, Lv1/h;

    iget-wide v5, v1, Lv1/C;->d:J

    iget-object v7, v1, Lv1/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    iget-object v9, v1, Lv1/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    iget-object v11, v1, Lv1/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    iget-object v13, v1, Lv1/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v8, :cond_0

    if-eqz v10, :cond_0

    if-eqz v14, :cond_0

    if-eqz v12, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v15, :cond_1

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v16

    check-cast v4, Lv1/X;

    iget-object v0, v4, Lv1/X;->a:Landroid/view/View;

    move/from16 v16, v3

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v17, v7

    iget-object v7, v1, Lv1/h;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    move/from16 v18, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lv1/c;

    invoke-direct {v8, v1, v4, v3, v0}, Lv1/c;-><init>(Lv1/h;Lv1/X;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v0, p0

    move/from16 v3, v16

    move-object/from16 v7, v17

    move/from16 v8, v18

    goto :goto_0

    :cond_1
    move-object/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    if-nez v10, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lv1/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lv1/b;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lv1/b;-><init>(Lv1/h;Ljava/util/ArrayList;I)V

    if-nez v18, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/g;

    iget-object v0, v0, Lv1/g;->a:Lv1/X;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    sget-object v4, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lv1/b;->run()V

    :cond_3
    :goto_1
    if-nez v12, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lv1/h;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lv1/b;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lv1/b;-><init>(Lv1/h;Ljava/util/ArrayList;I)V

    if-nez v18, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/f;

    iget-object v0, v0, Lv1/f;->a:Lv1/X;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    sget-object v4, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lv1/b;->run()V

    :cond_5
    :goto_2
    if-nez v14, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lv1/h;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lv1/b;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4}, Lv1/b;-><init>(Lv1/h;Ljava/util/ArrayList;I)V

    if-eqz v18, :cond_7

    if-eqz v10, :cond_7

    if-nez v12, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lv1/b;->run()V

    goto :goto_6

    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    if-nez v18, :cond_8

    goto :goto_4

    :cond_8
    move-wide v5, v7

    :goto_4
    if-nez v10, :cond_9

    iget-wide v9, v1, Lv1/C;->e:J

    goto :goto_5

    :cond_9
    move-wide v9, v7

    :goto_5
    if-nez v12, :cond_a

    iget-wide v7, v1, Lv1/C;->f:J

    :cond_a
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-long/2addr v7, v5

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/X;

    iget-object v0, v0, Lv1/X;->a:Landroid/view/View;

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3, v7, v8}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView;->C0:Z

    return-void

    :pswitch_0
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->K:Z

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_c
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->I:Z

    if-nez v0, :cond_d

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    goto :goto_8

    :cond_d
    iget-boolean v0, v2, Landroidx/recyclerview/widget/RecyclerView;->N:Z

    if-eqz v0, :cond_e

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/recyclerview/widget/RecyclerView;->M:Z

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->n()V

    :cond_f
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
