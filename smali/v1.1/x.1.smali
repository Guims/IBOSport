.class public final Lv1/x;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv1/a;)V
    .locals 3

    iget v0, p1, Lv1/a;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    iget v1, p1, Lv1/a;->b:I

    iget p1, p1, Lv1/a;->d:I

    invoke-virtual {v0, v1, p1}, Lv1/G;->j0(II)V

    return-void

    :cond_1
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    iget v1, p1, Lv1/a;->b:I

    iget p1, p1, Lv1/a;->d:I

    invoke-virtual {v0, v2, v1, p1}, Lv1/G;->m0(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void

    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    iget v1, p1, Lv1/a;->b:I

    iget p1, p1, Lv1/a;->d:I

    invoke-virtual {v0, v1, p1}, Lv1/G;->k0(II)V

    return-void

    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    iget v1, p1, Lv1/a;->b:I

    iget p1, p1, Lv1/a;->d:I

    invoke-virtual {v0, v1, p1}, Lv1/G;->h0(II)V

    return-void
.end method

.method public b(I)Lv1/X;
    .locals 7

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v1}, Lr0/C;->i()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v5, v3}, Lr0/C;->h(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lv1/X;->i()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, Lv1/X;->c:I

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    iget-object v6, v5, Lv1/X;->a:Landroid/view/View;

    iget-object v4, v4, Lr0/C;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    move-object v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    iget-object v0, v4, Lv1/X;->a:Landroid/view/View;

    iget-object p1, p1, Lr0/C;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_3
    return-object v2

    :cond_5
    return-object v4
.end method

.method public c(IILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v1}, Lr0/C;->i()I

    move-result v1

    add-int/2addr p2, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v2, v1, :cond_5

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v5, v2}, Lr0/C;->h(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lv1/X;->p()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    iget v7, v6, Lv1/X;->c:I

    if-lt v7, p1, :cond_4

    if-ge v7, p2, :cond_4

    invoke-virtual {v6, v3}, Lv1/X;->a(I)V

    const/16 v3, 0x400

    if-nez p3, :cond_1

    invoke-virtual {v6, v3}, Lv1/X;->a(I)V

    goto :goto_1

    :cond_1
    iget v7, v6, Lv1/X;->j:I

    and-int/2addr v3, v7

    if-nez v3, :cond_3

    iget-object v3, v6, Lv1/X;->k:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v6, Lv1/X;->k:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v6, Lv1/X;->l:Ljava/util/List;

    :cond_2
    iget-object v3, v6, Lv1/X;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lv1/H;

    iput-boolean v4, v3, Lv1/H;->c:Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object p3, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    iget-object v1, p3, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    :goto_3
    if-ltz v2, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/X;

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    iget v6, v5, Lv1/X;->c:I

    if-lt v6, p1, :cond_7

    if-ge v6, p2, :cond_7

    invoke-virtual {v5, v3}, Lv1/X;->a(I)V

    invoke-virtual {p3, v2}, Lv1/M;->h(I)V

    :cond_7
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_8
    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    return-void
.end method

.method public d(II)V
    .locals 8

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v1}, Lr0/C;->i()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v5, v3}, Lr0/C;->h(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lv1/X;->p()Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lv1/X;->c:I

    if-lt v6, p1, :cond_0

    invoke-virtual {v5, p2, v2}, Lv1/X;->m(IZ)V

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    iput-boolean v4, v5, Lv1/T;->f:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    iget-object v1, v1, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv1/X;

    if-eqz v6, :cond_2

    iget v7, v6, Lv1/X;->c:I

    if-lt v7, p1, :cond_2

    invoke-virtual {v6, p2, v2}, Lv1/X;->m(IZ)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v4, v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    return-void
.end method

.method public e(II)V
    .locals 11

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v1}, Lr0/C;->i()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge p1, p2, :cond_0

    move v4, p1

    move v5, p2

    move v6, v2

    goto :goto_0

    :cond_0
    move v5, p1

    move v4, p2

    move v6, v3

    :goto_0
    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_4

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v9, v8}, Lr0/C;->h(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v9

    if-eqz v9, :cond_3

    iget v10, v9, Lv1/X;->c:I

    if-lt v10, v4, :cond_3

    if-le v10, v5, :cond_1

    goto :goto_3

    :cond_1
    if-ne v10, p1, :cond_2

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, Lv1/X;->m(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v6, v7}, Lv1/X;->m(IZ)V

    :goto_2
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    iput-boolean v3, v9, Lv1/T;->f:Z

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    iget-object v1, v1, Lv1/M;->c:Ljava/util/ArrayList;

    if-ge p1, p2, :cond_5

    move v4, p1

    move v5, p2

    goto :goto_4

    :cond_5
    move v5, p1

    move v4, p2

    move v2, v3

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v7

    :goto_5
    if-ge v8, v6, :cond_9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv1/X;

    if-eqz v9, :cond_8

    iget v10, v9, Lv1/X;->c:I

    if-lt v10, v4, :cond_8

    if-le v10, v5, :cond_6

    goto :goto_6

    :cond_6
    if-ne v10, p1, :cond_7

    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v7}, Lv1/X;->m(IZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {v9, v2, v7}, Lv1/X;->m(IZ)V

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    return-void
.end method

.method public f(Lv1/X;LJ/q;LJ/q;)V
    .locals 8

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lv1/X;->o(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    move-object v2, v1

    check-cast v2, Lv1/h;

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LJ/q;->b:I

    iget v6, p3, LJ/q;->b:I

    if-ne v4, v6, :cond_1

    iget v1, p2, LJ/q;->c:I

    iget v3, p3, LJ/q;->c:I

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    goto :goto_1

    :cond_1
    :goto_0
    iget v5, p2, LJ/q;->c:I

    iget v7, p3, LJ/q;->c:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lv1/h;->g(Lv1/X;IIII)Z

    move-result p1

    goto :goto_2

    :goto_1
    invoke-virtual {v2, v3}, Lv1/h;->l(Lv1/X;)V

    iget-object p1, v3, Lv1/X;->a:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, v2, Lv1/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    :cond_2
    return-void
.end method

.method public g(Lv1/X;LJ/q;LJ/q;)V
    .locals 8

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    invoke-virtual {v1, p1}, Lv1/M;->m(Lv1/X;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Lv1/X;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lv1/X;->o(Z)V

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    move-object v2, v1

    check-cast v2, Lv1/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p2, LJ/q;->b:I

    iget v5, p2, LJ/q;->c:I

    iget-object p2, p1, Lv1/X;->a:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    iget v1, p3, LJ/q;->b:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v7, p3

    goto :goto_3

    :cond_1
    iget p3, p3, LJ/q;->c:I

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lv1/X;->i()Z

    move-result p3

    if-nez p3, :cond_2

    if-ne v4, v6, :cond_3

    if-eq v5, v7, :cond_2

    goto :goto_4

    :cond_2
    move-object v3, p1

    goto :goto_5

    :cond_3
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p2, v6, v7, p3, v1}, Landroid/view/View;->layout(IIII)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lv1/h;->g(Lv1/X;IIII)Z

    move-result p1

    goto :goto_6

    :goto_5
    invoke-virtual {v2, v3}, Lv1/h;->l(Lv1/X;)V

    iget-object p1, v2, Lv1/h;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :goto_6
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    :cond_4
    return-void
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
