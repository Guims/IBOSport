.class public final Landroidx/fragment/app/f;
.super Landroidx/fragment/app/g;


# instance fields
.field public c:Z

.field public d:Z

.field public e:LY1/c;


# virtual methods
.method public final j(Landroid/content/Context;)LY1/c;
    .locals 8

    iget-boolean v0, p0, Landroidx/fragment/app/f;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/f;->e:LY1/c;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/X;

    iget-object v1, v0, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    iget v0, v0, Landroidx/fragment/app/X;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/f;->c:Z

    iget-object v5, v1, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    if-nez v5, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    iget v6, v5, Landroidx/fragment/app/r;->f:I

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v0, :cond_4

    if-nez v5, :cond_3

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget v2, v5, Landroidx/fragment/app/r;->d:I

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    iget v2, v5, Landroidx/fragment/app/r;->e:I

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_8

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    iget v2, v5, Landroidx/fragment/app/r;->b:I

    goto :goto_3

    :cond_8
    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    iget v2, v5, Landroidx/fragment/app/r;->c:I

    :goto_3
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/t;->M(IIII)V

    iget-object v3, v1, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    const v7, 0x7f0b0430

    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_a
    iget-object v1, v1, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_b

    goto/16 :goto_7

    :cond_b
    if-nez v2, :cond_16

    if-eqz v6, :cond_16

    const/16 v1, 0x1001

    if-eq v6, v1, :cond_14

    const/16 v1, 0x2002

    if-eq v6, v1, :cond_12

    const/16 v1, 0x2005

    if-eq v6, v1, :cond_10

    const/16 v1, 0x1003

    if-eq v6, v1, :cond_e

    const/16 v1, 0x1004

    if-eq v6, v1, :cond_c

    const/4 v0, -0x1

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    const v0, 0x10100b8

    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->s(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_d
    const v0, 0x10100b9

    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->s(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_e
    if-eqz v0, :cond_f

    const v0, 0x7f020005

    goto :goto_4

    :cond_f
    const v0, 0x7f020006

    goto :goto_4

    :cond_10
    if-eqz v0, :cond_11

    const v0, 0x10100ba

    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->s(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_11
    const v0, 0x10100bb

    invoke-static {p1, v0}, Lcom/bumptech/glide/d;->s(Landroid/content/Context;I)I

    move-result v0

    goto :goto_4

    :cond_12
    if-eqz v0, :cond_13

    const v0, 0x7f020003

    goto :goto_4

    :cond_13
    const v0, 0x7f020004

    goto :goto_4

    :cond_14
    if-eqz v0, :cond_15

    const v0, 0x7f020007

    goto :goto_4

    :cond_15
    const v0, 0x7f020008

    goto :goto_4

    :cond_16
    :goto_5
    if-eqz v2, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v3, LY1/c;

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-direct {v3, v6, v1, v7}, LY1/c;-><init>(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    move-object v5, v3

    goto :goto_7

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    :cond_17
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v3, LY1/c;

    invoke-direct {v3, v1}, LY1/c;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    if-nez v0, :cond_18

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance v5, LY1/c;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {v5, v0, p1, v1}, LY1/c;-><init>(ILjava/lang/Object;Z)V

    goto :goto_7

    :cond_18
    throw v1

    :cond_19
    :goto_7
    iput-object v5, p0, Landroidx/fragment/app/f;->e:LY1/c;

    iput-boolean v4, p0, Landroidx/fragment/app/f;->d:Z

    return-object v5
.end method
