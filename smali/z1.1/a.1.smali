.class public final Lz1/a;
.super Lz1/l;


# instance fields
.field public P:Ljava/util/ArrayList;

.field public Q:Z

.field public R:I

.field public S:Z

.field public T:I


# virtual methods
.method public final A(La/a;)V
    .locals 3

    iget v0, p0, Lz1/a;->T:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lz1/a;->T:I

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2, p1}, Lz1/l;->A(La/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B(Landroid/animation/TimeInterpolator;)V
    .locals 3

    iget v0, p0, Lz1/a;->T:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz1/a;->T:I

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2, p1}, Lz1/l;->B(Landroid/animation/TimeInterpolator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lz1/l;->s:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public final C(Lv0/n;)V
    .locals 2

    invoke-super {p0, p1}, Lz1/l;->C(Lv0/n;)V

    iget v0, p0, Lz1/a;->T:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lz1/a;->T:I

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/l;

    invoke-virtual {v1, p1}, Lz1/l;->C(Lv0/n;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    iget v0, p0, Lz1/a;->T:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lz1/a;->T:I

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2}, Lz1/l;->D()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final E(J)V
    .locals 0

    iput-wide p1, p0, Lz1/l;->q:J

    return-void
.end method

.method public final G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Lz1/l;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz1/l;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final H(Lz1/l;)V
    .locals 4

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lz1/l;->x:Lz1/a;

    iget-wide v0, p0, Lz1/l;->r:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Lz1/l;->z(J)V

    :cond_0
    iget v0, p0, Lz1/a;->T:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz1/l;->s:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lz1/l;->B(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget v0, p0, Lz1/a;->T:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lz1/l;->D()V

    :cond_2
    iget v0, p0, Lz1/a;->T:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz1/l;->K:Lv0/n;

    invoke-virtual {p1, v0}, Lz1/l;->C(Lv0/n;)V

    :cond_3
    iget v0, p0, Lz1/a;->T:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lz1/l;->A(La/a;)V

    :cond_4
    return-void
.end method

.method public final c(Lz1/t;)V
    .locals 6

    iget-object v0, p1, Lz1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lz1/l;

    invoke-virtual {v4, v0}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Lz1/l;->c(Lz1/t;)V

    iget-object v5, p1, Lz1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cancel()V
    .locals 3

    invoke-super {p0}, Lz1/l;->cancel()V

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2}, Lz1/l;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/a;->i()Lz1/l;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lz1/t;)V
    .locals 3

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2, p1}, Lz1/l;->e(Lz1/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lz1/t;)V
    .locals 6

    iget-object v0, p1, Lz1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lz1/l;

    invoke-virtual {v4, v0}, Lz1/l;->s(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Lz1/l;->f(Lz1/t;)V

    iget-object v5, p1, Lz1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()Lz1/l;
    .locals 5

    invoke-super {p0}, Lz1/l;->i()Lz1/l;

    move-result-object v0

    check-cast v0, Lz1/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lz1/a;->P:Ljava/util/ArrayList;

    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz1/l;

    invoke-virtual {v3}, Lz1/l;->i()Lz1/l;

    move-result-object v3

    iget-object v4, v0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lz1/l;->x:Lz1/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final k(Landroid/view/ViewGroup;LK1/c;LK1/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    iget-wide v0, p0, Lz1/l;->q:J

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lz1/l;

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lz1/a;->Q:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    move-object/from16 v10, p5

    goto :goto_3

    :cond_1
    :goto_2
    iget-wide v8, v5, Lz1/l;->q:J

    cmp-long v4, v8, v6

    if-lez v4, :cond_2

    add-long/2addr v8, v0

    invoke-virtual {v5, v8, v9}, Lz1/l;->E(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v0, v1}, Lz1/l;->E(J)V

    goto :goto_1

    :goto_3
    invoke-virtual/range {v5 .. v10}, Lz1/l;->k(Landroid/view/ViewGroup;LK1/c;LK1/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final v(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lz1/l;->v(Landroid/view/View;)V

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2, p1}, Lz1/l;->v(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w(Lz1/j;)Lz1/l;
    .locals 0

    invoke-super {p0, p1}, Lz1/l;->w(Lz1/j;)Lz1/l;

    return-object p0
.end method

.method public final x(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lz1/l;->x(Landroid/view/View;)V

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2, p1}, Lz1/l;->x(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 6

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz1/l;->F()V

    invoke-virtual {p0}, Lz1/l;->l()V

    return-void

    :cond_0
    new-instance v0, Lz1/q;

    invoke-direct {v0}, Lz1/q;-><init>()V

    iput-object p0, v0, Lz1/q;->b:Lz1/l;

    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lz1/l;

    invoke-virtual {v5, v0}, Lz1/l;->a(Lz1/j;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lz1/a;->R:I

    iget-boolean v0, p0, Lz1/a;->Q:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lz1/a;->P:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/l;

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    new-instance v4, Lz1/q;

    invoke-direct {v4, v2}, Lz1/q;-><init>(Lz1/l;)V

    invoke-virtual {v1, v4}, Lz1/l;->a(Lz1/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lz1/l;->y()V

    return-void

    :cond_3
    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lz1/l;

    invoke-virtual {v2}, Lz1/l;->y()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final z(J)V
    .locals 3

    iput-wide p1, p0, Lz1/l;->r:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lz1/a;->P:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lz1/a;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/l;

    invoke-virtual {v2, p1, p2}, Lz1/l;->z(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
