.class public final Landroidx/fragment/app/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/i;->d:Z

    iput-boolean v0, p0, Landroidx/fragment/app/i;->e:Z

    iput-object p1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method public static f(Landroid/view/ViewGroup;Lx2/f;)Landroidx/fragment/app/i;
    .locals 3

    const v0, 0x7f0b0355

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroidx/fragment/app/i;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/fragment/app/i;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/fragment/app/i;

    invoke-direct {p1, p0}, Landroidx/fragment/app/i;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(IILandroidx/fragment/app/S;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, LF/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v2, p3, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/i;->d(Landroidx/fragment/app/t;)Landroidx/fragment/app/X;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/X;->c(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/fragment/app/X;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/X;-><init>(IILandroidx/fragment/app/S;LF/b;)V

    iget-object p1, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/W;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/W;-><init>(Landroidx/fragment/app/i;Landroidx/fragment/app/X;I)V

    iget-object p2, v2, Landroidx/fragment/app/X;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/fragment/app/W;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Landroidx/fragment/app/W;-><init>(Landroidx/fragment/app/i;Landroidx/fragment/app/X;I)V

    iget-object p2, v2, Landroidx/fragment/app/X;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/ArrayList;Z)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    :cond_0
    :goto_0
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v3, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Landroidx/fragment/app/X;

    iget-object v12, v11, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v12, v12, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-static {v12}, LB/f;->c(Landroid/view/View;)I

    move-result v12

    iget v13, v11, Landroidx/fragment/app/X;->a:I

    invoke-static {v13}, Lp/e;->c(I)I

    move-result v13

    if-eqz v13, :cond_2

    if-eq v13, v10, :cond_1

    if-eq v13, v9, :cond_2

    if-eq v13, v8, :cond_2

    goto :goto_0

    :cond_1
    if-eq v12, v9, :cond_0

    move-object v6, v11

    goto :goto_0

    :cond_2
    if-ne v12, v9, :cond_0

    if-nez v5, :cond_0

    move-object v5, v11

    goto :goto_0

    :cond_3
    invoke-static {v9}, Landroidx/fragment/app/K;->G(I)Z

    move-result v3

    const-string v7, " to "

    const-string v11, "FragmentManager"

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "Executing operations from "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/X;

    iget-object v14, v14, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v15, :cond_5

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    check-cast v8, Landroidx/fragment/app/X;

    iget-object v8, v8, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v8, v8, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    iget-object v9, v14, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    iget v4, v9, Landroidx/fragment/app/r;->b:I

    iput v4, v8, Landroidx/fragment/app/r;->b:I

    iget v4, v9, Landroidx/fragment/app/r;->c:I

    iput v4, v8, Landroidx/fragment/app/r;->c:I

    iget v4, v9, Landroidx/fragment/app/r;->d:I

    iput v4, v8, Landroidx/fragment/app/r;->d:I

    iget v4, v9, Landroidx/fragment/app/r;->e:I

    iput v4, v8, Landroidx/fragment/app/r;->e:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_e

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroidx/fragment/app/X;

    new-instance v10, LF/b;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9}, Landroidx/fragment/app/X;->d()V

    iget-object v14, v9, Landroidx/fragment/app/X;->e:Ljava/util/HashSet;

    invoke-virtual {v14, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroidx/fragment/app/f;

    invoke-direct {v15, v9, v10}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/X;LF/b;)V

    const/4 v10, 0x0

    iput-boolean v10, v15, Landroidx/fragment/app/f;->d:Z

    iput-boolean v2, v15, Landroidx/fragment/app/f;->c:Z

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, LF/b;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9}, Landroidx/fragment/app/X;->d()V

    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v14, Landroidx/fragment/app/h;

    if-eqz v2, :cond_7

    if-ne v9, v5, :cond_6

    :goto_3
    const/16 v17, 0x1

    goto :goto_4

    :cond_6
    move/from16 v17, v10

    goto :goto_4

    :cond_7
    if-ne v9, v6, :cond_6

    goto :goto_3

    :goto_4
    invoke-direct {v14, v9, v15}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/X;LF/b;)V

    iget v15, v9, Landroidx/fragment/app/X;->a:I

    iget-object v10, v9, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    const/4 v1, 0x2

    if-ne v15, v1, :cond_a

    if-eqz v2, :cond_8

    iget-object v1, v10, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    goto :goto_5

    :cond_8
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    if-eqz v2, :cond_9

    iget-object v1, v10, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    goto :goto_6

    :cond_9
    iget-object v1, v10, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_b

    iget-object v1, v10, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    goto :goto_6

    :cond_b
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    if-eqz v17, :cond_d

    if-eqz v2, :cond_c

    iget-object v1, v10, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    goto :goto_7

    :cond_c
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    :goto_7
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, LE1/k;

    invoke-direct {v1, v0, v13, v9}, LE1/k;-><init>(Landroidx/fragment/app/i;Ljava/util/ArrayList;Landroidx/fragment/app/X;)V

    iget-object v9, v9, Landroidx/fragment/app/X;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    goto :goto_2

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :cond_f
    :goto_8
    if-ge v4, v2, :cond_10

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Landroidx/fragment/app/h;

    iget-object v8, v8, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/fragment/app/X;

    iget-object v9, v8, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v9, v9, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-static {v9}, LB/f;->c(Landroid/view/View;)I

    move-result v9

    iget v8, v8, Landroidx/fragment/app/X;->a:I

    if-eq v9, v8, :cond_f

    const/4 v8, 0x2

    goto :goto_8

    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_11

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Landroidx/fragment/app/h;

    iget-object v9, v8, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v9, Landroidx/fragment/app/X;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroidx/fragment/app/g;->d()V

    goto :goto_9

    :cond_11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_a
    const-string v15, " has started."

    if-ge v14, v10, :cond_1b

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    check-cast v0, Landroidx/fragment/app/f;

    move/from16 p1, v2

    iget-object v2, v0, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/X;

    move-object/from16 v17, v3

    iget-object v3, v2, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v3, v3, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-static {v3}, LB/f;->c(Landroid/view/View;)I

    move-result v3

    iget v2, v2, Landroidx/fragment/app/X;->a:I

    move/from16 p2, v10

    if-eq v3, v2, :cond_12

    const/4 v10, 0x2

    if-eq v3, v10, :cond_13

    if-eq v2, v10, :cond_13

    :cond_12
    move/from16 v24, v12

    move-object v12, v4

    goto/16 :goto_e

    :cond_13
    invoke-virtual {v0, v8}, Landroidx/fragment/app/f;->j(Landroid/content/Context;)LY1/c;

    move-result-object v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Landroidx/fragment/app/g;->d()V

    :goto_b
    move/from16 v24, v12

    :goto_c
    move-object v12, v4

    goto/16 :goto_f

    :cond_14
    iget-object v2, v2, LY1/c;->r:Ljava/lang/Object;

    check-cast v2, Landroid/animation/Animator;

    if-nez v2, :cond_15

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    iget-object v3, v0, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/X;

    iget-object v10, v3, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    move-object/from16 v23, v0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v24, v12

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring Animator set on "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as this Fragment was involved in a Transition."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-virtual/range {v23 .. v23}, Landroidx/fragment/app/g;->d()V

    goto :goto_c

    :cond_17
    iget v0, v3, Landroidx/fragment/app/X;->a:I

    const/4 v12, 0x3

    if-ne v0, v12, :cond_18

    const/16 v21, 0x1

    goto :goto_d

    :cond_18
    const/16 v21, 0x0

    :goto_d
    if-eqz v21, :cond_19

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_19
    iget-object v0, v10, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v18, Landroidx/fragment/app/d;

    move-object/from16 v20, v0

    move-object/from16 v22, v3

    move-object/from16 v19, v4

    invoke-direct/range {v18 .. v23}, Landroidx/fragment/app/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/X;Landroidx/fragment/app/f;)V

    move-object/from16 v10, v18

    move-object/from16 v12, v19

    move-object/from16 v4, v20

    move-object/from16 v0, v23

    invoke-virtual {v2, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/K;->G(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "Animator from operation "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, v0, Landroidx/fragment/app/g;->b:Ljava/lang/Object;

    check-cast v0, LF/b;

    new-instance v4, LY1/c;

    const/4 v10, 0x6

    invoke-direct {v4, v2, v10, v3}, LY1/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, LF/b;->a(LF/a;)V

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v10, p2

    move-object v4, v12

    move-object/from16 v3, v17

    const/4 v12, 0x1

    goto/16 :goto_a

    :goto_e
    invoke-virtual {v0}, Landroidx/fragment/app/g;->d()V

    :goto_f
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v10, p2

    move-object v4, v12

    move-object/from16 v3, v17

    move/from16 v12, v24

    goto/16 :goto_a

    :cond_1b
    move/from16 p1, v2

    move/from16 v24, v12

    move-object v12, v4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroidx/fragment/app/f;

    iget-object v3, v2, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/X;

    iget-object v4, v3, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    const-string v10, "Ignoring Animation set on "

    if-eqz p1, :cond_1d

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/K;->G(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {v2}, Landroidx/fragment/app/g;->d()V

    goto :goto_10

    :cond_1d
    if-eqz v24, :cond_1f

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/K;->G(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {v2}, Landroidx/fragment/app/g;->d()V

    goto :goto_10

    :cond_1f
    iget-object v4, v4, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroidx/fragment/app/f;->j(Landroid/content/Context;)LY1/c;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, LY1/c;->q:Ljava/lang/Object;

    check-cast v10, Landroid/view/animation/Animation;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v14, v3, Landroidx/fragment/app/X;->a:I

    move/from16 p2, v0

    const/4 v0, 0x1

    if-eq v14, v0, :cond_20

    invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Landroidx/fragment/app/g;->d()V

    goto :goto_11

    :cond_20
    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v14, Landroidx/fragment/app/w;

    invoke-direct {v14, v10, v12, v4}, Landroidx/fragment/app/w;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v10, Landroidx/fragment/app/e;

    invoke-direct {v10, v3, v12, v4, v2}, Landroidx/fragment/app/e;-><init>(Landroidx/fragment/app/X;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/f;)V

    invoke-virtual {v14, v10}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/K;->G(I)Z

    move-result v10

    if-eqz v10, :cond_21

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Animation from operation "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_11
    iget-object v10, v2, Landroidx/fragment/app/g;->b:Ljava/lang/Object;

    check-cast v10, LF/b;

    new-instance v18, LK1/c;

    const/16 v23, 0x6

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v12

    invoke-direct/range {v18 .. v23}, LK1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v18

    move-object/from16 v19, v20

    invoke-virtual {v10, v2}, LF/b;->a(LF/a;)V

    move/from16 v0, p2

    move-object/from16 v12, v19

    goto/16 :goto_10

    :cond_22
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v0, :cond_23

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Landroidx/fragment/app/X;

    iget-object v2, v1, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget-object v2, v2, Landroidx/fragment/app/t;->T:Landroid/view/View;

    iget v1, v1, Landroidx/fragment/app/X;->a:I

    invoke-static {v2, v1}, LB/f;->a(Landroid/view/View;I)V

    goto :goto_12

    :cond_23
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Completed executing operations from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method public final c()V
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/i;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/i;->e()V

    iput-boolean v1, p0, Landroidx/fragment/app/i;->d:Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_2
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroidx/fragment/app/X;

    invoke-static {v5}, Landroidx/fragment/app/K;->G(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v6}, Landroidx/fragment/app/X;->a()V

    iget-boolean v5, v6, Landroidx/fragment/app/X;->g:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/i;->g()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Landroidx/fragment/app/K;->G(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "FragmentManager"

    const-string v4, "SpecialEffectsController: Executing pending operations"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Landroidx/fragment/app/X;

    invoke-virtual {v6}, Landroidx/fragment/app/X;->d()V

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Landroidx/fragment/app/i;->d:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/i;->b(Ljava/util/ArrayList;Z)V

    iput-boolean v1, p0, Landroidx/fragment/app/i;->d:Z

    invoke-static {v5}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Finished executing pending operations"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Landroidx/fragment/app/t;)Landroidx/fragment/app/X;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/X;

    iget-object v4, v3, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroidx/fragment/app/X;->f:Z

    if-nez v4, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()V
    .locals 12

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    sget-object v2, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iget-object v2, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/i;->g()V

    iget-object v3, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/X;

    invoke-virtual {v7}, Landroidx/fragment/app/X;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroidx/fragment/app/X;

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SpecialEffectsController: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string v10, ""

    goto :goto_2

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Container "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " is not attached to window. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Cancelling running operation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v7}, Landroidx/fragment/app/X;->a()V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroidx/fragment/app/X;

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    const-string v9, ""

    goto :goto_4

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Container "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroidx/fragment/app/i;->a:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is not attached to window. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Cancelling pending operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v6}, Landroidx/fragment/app/X;->a()V

    goto :goto_3

    :cond_7
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/X;

    iget v4, v3, Landroidx/fragment/app/X;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    invoke-virtual {v4}, Landroidx/fragment/app/t;->K()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, LB/f;->b(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/X;->c(II)V

    goto :goto_0

    :cond_1
    return-void
.end method
