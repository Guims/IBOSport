.class public final Lv1/M;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Lv1/L;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv1/M;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/M;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lv1/M;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lv1/M;->e:I

    iput p1, p0, Lv1/M;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lv1/X;Z)V
    .locals 6

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->j(Lv1/X;)V

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v1, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->D0:Lv1/Z;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lv1/Z;->e:Lv1/Y;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lv1/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LJ/b;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v0, v2}, LJ/U;->l(Landroid/view/View;LJ/b;)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Lv1/N;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->E:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    check-cast p2, Landroidx/leanback/widget/a;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/a;->a(Lv1/X;)V

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/N;

    check-cast v5, Landroidx/leanback/widget/a;

    invoke-virtual {v5, p1}, Landroidx/leanback/widget/a;->a(Lv1/X;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    if-eqz p2, :cond_4

    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->v:Lp5/p;

    invoke-virtual {p2, p1}, Lp5/p;->N(Lv1/X;)V

    :cond_4
    iput-object v3, p1, Lv1/X;->s:Lv1/y;

    iput-object v3, p1, Lv1/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lv1/M;->c()Lv1/L;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lv1/X;->f:I

    invoke-virtual {p2, v1}, Lv1/L;->a(I)Lv1/K;

    move-result-object v2

    iget-object v2, v2, Lv1/K;->a:Ljava/util/ArrayList;

    iget-object p2, p2, Lv1/L;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv1/K;

    iget p2, p2, Lv1/K;->b:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p2, v1, :cond_5

    invoke-static {v0}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lv1/X;->n()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    invoke-virtual {v1}, Lv1/T;->b()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    iget-boolean v1, v1, Lv1/T;->g:Z

    if-nez v1, :cond_0

    return p1

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->t:LA5/t;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LA5/t;->h(II)I

    move-result p1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "invalid position "

    const-string v3, ". State item count is "

    invoke-static {v2, p1, v3}, LB/f;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    invoke-virtual {v2}, Lv1/T;->b()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Lv1/L;
    .locals 2

    iget-object v0, p0, Lv1/M;->g:Lv1/L;

    if-nez v0, :cond_0

    new-instance v0, Lv1/L;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lv1/L;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, Lv1/L;->b:I

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lv1/L;->c:Ljava/util/Set;

    iput-object v0, p0, Lv1/M;->g:Lv1/L;

    invoke-virtual {p0}, Lv1/M;->e()V

    :cond_0
    iget-object v0, p0, Lv1/M;->g:Lv1/L;

    return-object v0
.end method

.method public final d(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Lv1/M;->l(IJ)Lv1/X;

    move-result-object p1

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    return-object p1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lv1/M;->g:Lv1/L;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView;->I:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lv1/L;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final f(Lv1/y;Z)V
    .locals 4

    iget-object v0, p0, Lv1/M;->g:Lv1/L;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lv1/L;->a:Landroid/util/SparseArray;

    iget-object v0, v0, Lv1/L;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv1/K;

    iget-object v0, v0, Lv1/K;->a:Ljava/util/ArrayList;

    move v2, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv1/X;

    iget-object v3, v3, Lv1/X;->a:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lv1/M;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ln/g;

    iget-object v1, v0, Ln/g;->c:[I

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Ln/g;->d:I

    :cond_2
    return-void
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/X;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lv1/M;->a(Lv1/X;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v0

    invoke-virtual {v0}, Lv1/X;->k()Z

    move-result v1

    iget-object v2, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lv1/X;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lv1/X;->n:Lv1/M;

    invoke-virtual {p1, v0}, Lv1/M;->m(Lv1/X;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lv1/X;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lv1/X;->j:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, Lv1/X;->j:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lv1/M;->j(Lv1/X;)V

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lv1/X;->h()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    invoke-virtual {p1, v0}, Lv1/C;->d(Lv1/X;)V

    :cond_3
    return-void
.end method

.method public final j(Lv1/X;)V
    .locals 12

    iget-object v0, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->v0:Ln/g;

    invoke-virtual {p1}, Lv1/X;->j()Z

    move-result v2

    iget-object v3, p1, Lv1/X;->a:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_f

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, Lv1/X;->k()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, Lv1/X;->p()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p1, Lv1/X;->j:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    sget-object v2, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lv1/X;->h()Z

    move-result v6

    if-eqz v6, :cond_b

    iget v6, p0, Lv1/M;->f:I

    if-lez v6, :cond_9

    iget v6, p1, Lv1/X;->j:I

    and-int/lit16 v6, v6, 0x20e

    if-eqz v6, :cond_2

    goto :goto_5

    :cond_2
    iget-object v6, p0, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p0, Lv1/M;->f:I

    if-lt v7, v8, :cond_3

    if-lez v7, :cond_3

    invoke-virtual {p0, v4}, Lv1/M;->h(I)V

    add-int/lit8 v7, v7, -0x1

    :cond_3
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    if-eqz v8, :cond_8

    if-lez v7, :cond_8

    iget v8, p1, Lv1/X;->c:I

    iget-object v9, v1, Ln/g;->c:[I

    if-eqz v9, :cond_5

    iget v9, v1, Ln/g;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_5

    iget-object v11, v1, Ln/g;->c:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, -0x1

    :goto_2
    if-ltz v7, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv1/X;

    iget v8, v8, Lv1/X;->c:I

    iget-object v9, v1, Ln/g;->c:[I

    if-eqz v9, :cond_7

    iget v9, v1, Ln/g;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_7

    iget-object v11, v1, Ln/g;->c:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_6

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_7
    add-int/2addr v7, v5

    :cond_8
    :goto_4
    invoke-virtual {v6, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v1, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v4

    :goto_6
    if-nez v1, :cond_a

    invoke-virtual {p0, p1, v5}, Lv1/M;->a(Lv1/X;Z)V

    :goto_7
    move v4, v1

    goto :goto_8

    :cond_a
    move v5, v4

    goto :goto_7

    :cond_b
    move v5, v4

    :goto_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->v:Lp5/p;

    invoke-virtual {v0, p1}, Lp5/p;->N(Lv1/X;)V

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    if-eqz v2, :cond_c

    invoke-static {v3}, Landroid/support/v4/media/session/b;->c(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lv1/X;->s:Lv1/y;

    iput-object v0, p1, Lv1/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    :cond_c
    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv1/X;->j()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_10

    move v4, v5

    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final k(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object p1

    iget v0, p1, Lv1/X;->j:I

    and-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lv1/X;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lv1/X;->d()Ljava/util/List;

    move-result-object v2

    check-cast v0, Lv1/h;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lv1/h;->g:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lv1/X;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv1/M;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv1/M;->b:Ljava/util/ArrayList;

    :cond_2
    iput-object p0, p1, Lv1/X;->n:Lv1/M;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lv1/X;->o:Z

    iget-object v0, p0, Lv1/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lv1/X;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lv1/X;->i()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    iget-boolean v0, v0, Lv1/y;->b:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    iput-object p0, p1, Lv1/X;->n:Lv1/M;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lv1/X;->o:Z

    iget-object v0, p0, Lv1/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(IJ)Lv1/X;
    .locals 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget-object v2, v1, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    if-ltz v0, :cond_4b

    invoke-virtual {v3}, Lv1/T;->b()I

    move-result v4

    if-ge v0, v4, :cond_4b

    iget-boolean v4, v3, Lv1/T;->g:Z

    const/16 v5, 0x20

    const/4 v8, 0x0

    if-eqz v4, :cond_6

    iget-object v4, v1, Lv1/M;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    move v9, v8

    :goto_0
    if-ge v9, v4, :cond_2

    iget-object v10, v1, Lv1/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv1/X;

    invoke-virtual {v10}, Lv1/X;->q()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Lv1/X;->c()I

    move-result v11

    if-ne v11, v0, :cond_1

    invoke-virtual {v10, v5}, Lv1/X;->a(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    iget-boolean v9, v9, Lv1/y;->b:Z

    if-eqz v9, :cond_4

    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->t:LA5/t;

    invoke-virtual {v9, v0, v8}, LA5/t;->h(II)I

    move-result v9

    if-lez v9, :cond_4

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v10}, Lv1/y;->a()I

    move-result v10

    if-ge v9, v10, :cond_4

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v10, v9}, Lv1/y;->b(I)J

    move-result-wide v9

    move v11, v8

    :goto_1
    if-ge v11, v4, :cond_4

    iget-object v12, v1, Lv1/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv1/X;

    invoke-virtual {v12}, Lv1/X;->q()Z

    move-result v13

    if-nez v13, :cond_3

    iget-wide v13, v12, Lv1/X;->e:J

    cmp-long v13, v13, v9

    if-nez v13, :cond_3

    invoke-virtual {v12, v5}, Lv1/X;->a(I)V

    move-object v10, v12

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v8

    goto :goto_4

    :cond_6
    move v4, v8

    const/4 v10, 0x0

    :goto_4
    iget-object v9, v1, Lv1/M;->a:Ljava/util/ArrayList;

    iget-object v11, v1, Lv1/M;->c:Ljava/util/ArrayList;

    if-nez v10, :cond_1a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v12, v8

    :goto_5
    if-ge v12, v10, :cond_9

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lv1/X;

    invoke-virtual {v13}, Lv1/X;->q()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-virtual {v13}, Lv1/X;->c()I

    move-result v14

    if-ne v14, v0, :cond_8

    invoke-virtual {v13}, Lv1/X;->g()Z

    move-result v14

    if-nez v14, :cond_8

    iget-boolean v14, v3, Lv1/T;->g:Z

    if-nez v14, :cond_7

    invoke-virtual {v13}, Lv1/X;->i()Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    invoke-virtual {v13, v5}, Lv1/X;->a(I)V

    move-object v10, v13

    const/16 v16, 0x1

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    iget-object v10, v10, Lr0/C;->d:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v8

    :goto_6
    if-ge v13, v12, :cond_b

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual {v15}, Lv1/X;->c()I

    move-result v7

    if-ne v7, v0, :cond_a

    invoke-virtual {v15}, Lv1/X;->g()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v15}, Lv1/X;->i()Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x1

    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_f

    invoke-static {v14}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v7

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    iget-object v12, v10, Lr0/C;->c:Ljava/lang/Object;

    check-cast v12, LC5/a;

    iget-object v13, v10, Lr0/C;->b:Ljava/lang/Object;

    check-cast v13, Lv1/x;

    iget-object v13, v13, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_e

    invoke-virtual {v12, v13}, LC5/a;->s(I)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v12, v13}, LC5/a;->p(I)V

    invoke-virtual {v10, v14}, Lr0/C;->q(Landroid/view/View;)V

    iget-object v10, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v10, v14}, Lr0/C;->l(Landroid/view/View;)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_c

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    invoke-virtual {v12, v10}, Lr0/C;->d(I)V

    invoke-virtual {v1, v14}, Lv1/M;->k(Landroid/view/View;)V

    const/16 v10, 0x2020

    invoke-virtual {v7, v10}, Lv1/X;->a(I)V

    move-object v10, v7

    goto :goto_9

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view is not a child, cannot hide "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v8

    :goto_8
    if-ge v10, v7, :cond_11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lv1/X;

    invoke-virtual {v12}, Lv1/X;->g()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v12}, Lv1/X;->c()I

    move-result v13

    if-ne v13, v0, :cond_10

    invoke-virtual {v12}, Lv1/X;->e()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v10, v12

    goto :goto_9

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Lv1/X;->i()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-boolean v7, v3, Lv1/T;->g:Z

    goto :goto_a

    :cond_12
    iget v7, v10, Lv1/X;->c:I

    if-ltz v7, :cond_19

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v12}, Lv1/y;->a()I

    move-result v12

    if-ge v7, v12, :cond_19

    iget-boolean v7, v3, Lv1/T;->g:Z

    if-nez v7, :cond_14

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    iget v12, v10, Lv1/X;->c:I

    invoke-virtual {v7, v12}, Lv1/y;->c(I)I

    move-result v7

    iget v12, v10, Lv1/X;->f:I

    if-eq v7, v12, :cond_14

    :cond_13
    move v7, v8

    goto :goto_a

    :cond_14
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    iget-boolean v12, v7, Lv1/y;->b:Z

    if-eqz v12, :cond_15

    iget-wide v12, v10, Lv1/X;->e:J

    iget v14, v10, Lv1/X;->c:I

    invoke-virtual {v7, v14}, Lv1/y;->b(I)J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-nez v7, :cond_13

    :cond_15
    move/from16 v7, v16

    :goto_a
    if-nez v7, :cond_18

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Lv1/X;->a(I)V

    invoke-virtual {v10}, Lv1/X;->j()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, v10, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v7, v10, Lv1/X;->n:Lv1/M;

    invoke-virtual {v7, v10}, Lv1/M;->m(Lv1/X;)V

    goto :goto_b

    :cond_16
    invoke-virtual {v10}, Lv1/X;->q()Z

    move-result v7

    if-eqz v7, :cond_17

    iget v7, v10, Lv1/X;->j:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v10, Lv1/X;->j:I

    :cond_17
    :goto_b
    invoke-virtual {v1, v10}, Lv1/M;->j(Lv1/X;)V

    const/4 v10, 0x0

    goto :goto_c

    :cond_18
    move/from16 v4, v16

    goto :goto_c

    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v16, 0x1

    :cond_1b
    :goto_c
    const-wide/16 v17, 0x0

    const-wide v19, 0x7fffffffffffffffL

    if-nez v10, :cond_2f

    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->t:LA5/t;

    invoke-virtual {v7, v0, v8}, LA5/t;->h(II)I

    move-result v7

    if-ltz v7, :cond_2e

    const-wide/16 v21, 0x3

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v12}, Lv1/y;->a()I

    move-result v12

    if-ge v7, v12, :cond_2e

    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v12, v7}, Lv1/y;->c(I)I

    move-result v12

    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    const-wide/16 v23, 0x4

    iget-boolean v14, v13, Lv1/y;->b:Z

    if-eqz v14, :cond_23

    invoke-virtual {v13, v7}, Lv1/y;->b(I)J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_d
    if-ltz v10, :cond_1f

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lv1/X;

    move/from16 v26, v7

    iget-wide v6, v15, Lv1/X;->e:J

    iget-object v8, v15, Lv1/X;->a:Landroid/view/View;

    cmp-long v6, v6, v13

    if-nez v6, :cond_1e

    invoke-virtual {v15}, Lv1/X;->q()Z

    move-result v6

    if-nez v6, :cond_1e

    iget v6, v15, Lv1/X;->f:I

    if-ne v12, v6, :cond_1d

    invoke-virtual {v15, v5}, Lv1/X;->a(I)V

    invoke-virtual {v15}, Lv1/X;->i()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-boolean v5, v3, Lv1/T;->g:Z

    if-nez v5, :cond_1c

    iget v5, v15, Lv1/X;->j:I

    and-int/lit8 v5, v5, -0xf

    or-int/lit8 v5, v5, 0x2

    iput v5, v15, Lv1/X;->j:I

    :cond_1c
    move-object v10, v15

    goto :goto_f

    :cond_1d
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v7

    const/4 v8, 0x0

    iput-object v8, v7, Lv1/X;->n:Lv1/M;

    iput-boolean v6, v7, Lv1/X;->o:Z

    iget v6, v7, Lv1/X;->j:I

    and-int/lit8 v6, v6, -0x21

    iput v6, v7, Lv1/X;->j:I

    invoke-virtual {v1, v7}, Lv1/M;->j(Lv1/X;)V

    :cond_1e
    add-int/lit8 v10, v10, -0x1

    move/from16 v7, v26

    const/4 v8, 0x0

    goto :goto_d

    :cond_1f
    move/from16 v26, v7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_e
    if-ltz v5, :cond_21

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv1/X;

    iget-wide v7, v6, Lv1/X;->e:J

    cmp-long v7, v7, v13

    if-nez v7, :cond_22

    invoke-virtual {v6}, Lv1/X;->e()Z

    move-result v7

    if-nez v7, :cond_22

    iget v7, v6, Lv1/X;->f:I

    if-ne v12, v7, :cond_20

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v10, v6

    goto :goto_f

    :cond_20
    invoke-virtual {v1, v5}, Lv1/M;->h(I)V

    :cond_21
    const/4 v10, 0x0

    goto :goto_f

    :cond_22
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :goto_f
    if-eqz v10, :cond_23

    move/from16 v5, v26

    iput v5, v10, Lv1/X;->c:I

    move/from16 v4, v16

    :cond_23
    if-nez v10, :cond_27

    invoke-virtual {v1}, Lv1/M;->c()Lv1/L;

    move-result-object v5

    iget-object v5, v5, Lv1/L;->a:Landroid/util/SparseArray;

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/K;

    if-eqz v5, :cond_25

    iget-object v5, v5, Lv1/K;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_10
    if-ltz v6, :cond_25

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv1/X;

    invoke-virtual {v7}, Lv1/X;->e()Z

    move-result v7

    if-nez v7, :cond_24

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv1/X;

    goto :goto_11

    :cond_24
    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    :cond_25
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_26

    invoke-virtual {v5}, Lv1/X;->n()V

    sget-object v6, Landroidx/recyclerview/widget/RecyclerView;->P0:[I

    :cond_26
    move-object v10, v5

    :cond_27
    if-nez v10, :cond_30

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    cmp-long v7, p2, v19

    if-eqz v7, :cond_2a

    iget-object v7, v1, Lv1/M;->g:Lv1/L;

    invoke-virtual {v7, v12}, Lv1/L;->a(I)Lv1/K;

    move-result-object v7

    iget-wide v7, v7, Lv1/K;->c:J

    cmp-long v9, v7, v17

    if-eqz v9, :cond_29

    add-long/2addr v7, v5

    cmp-long v7, v7, p2

    if-gez v7, :cond_28

    goto :goto_12

    :cond_28
    const/4 v7, 0x0

    goto :goto_13

    :cond_29
    :goto_12
    move/from16 v7, v16

    :goto_13
    if-nez v7, :cond_2a

    const/16 v25, 0x0

    return-object v25

    :cond_2a
    iget-object v7, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v8, "RV CreateView"

    sget v9, LF/h;->a:I

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v12}, Lv1/y;->h(Landroid/view/ViewGroup;I)Lv1/X;

    move-result-object v10

    iget-object v7, v10, Lv1/X;->a:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_2d

    iput v12, v10, Lv1/X;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    if-eqz v8, :cond_2b

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->E(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    if-eqz v7, :cond_2b

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v10, Lv1/X;->b:Ljava/lang/ref/WeakReference;

    :cond_2b
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    iget-object v9, v1, Lv1/M;->g:Lv1/L;

    sub-long/2addr v7, v5

    invoke-virtual {v9, v12}, Lv1/L;->a(I)Lv1/K;

    move-result-object v5

    iget-wide v11, v5, Lv1/K;->c:J

    cmp-long v6, v11, v17

    if-nez v6, :cond_2c

    goto :goto_14

    :cond_2c
    div-long v11, v11, v23

    mul-long v11, v11, v21

    div-long v7, v7, v23

    add-long/2addr v7, v11

    :goto_14
    iput-wide v7, v5, Lv1/K;->c:J

    goto :goto_16

    :catchall_0
    move-exception v0

    goto :goto_15

    :cond_2d
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_15
    sget v2, LF/h;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2e
    move v5, v7

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "(offset:"

    const-string v7, ").state:"

    const-string v8, "Inconsistency detected. Invalid item position "

    invoke-static {v8, v0, v6, v5, v7}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lv1/T;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2f
    const-wide/16 v21, 0x3

    const-wide/16 v23, 0x4

    :cond_30
    :goto_16
    iget-object v5, v10, Lv1/X;->a:Landroid/view/View;

    if-eqz v4, :cond_32

    iget-boolean v6, v3, Lv1/T;->g:Z

    if-nez v6, :cond_32

    iget v6, v10, Lv1/X;->j:I

    and-int/lit16 v7, v6, 0x2000

    if-eqz v7, :cond_31

    move/from16 v7, v16

    goto :goto_17

    :cond_31
    const/4 v7, 0x0

    :goto_17
    if-eqz v7, :cond_32

    and-int/lit16 v6, v6, -0x2001

    iput v6, v10, Lv1/X;->j:I

    iget-boolean v6, v3, Lv1/T;->j:Z

    if-eqz v6, :cond_32

    invoke-static {v10}, Lv1/C;->b(Lv1/X;)V

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->e0:Lv1/C;

    invoke-virtual {v10}, Lv1/X;->d()Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LJ/q;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, LJ/q;-><init>(I)V

    invoke-virtual {v6, v10}, LJ/q;->a(Lv1/X;)V

    invoke-virtual {v2, v10, v6}, Landroidx/recyclerview/widget/RecyclerView;->X(Lv1/X;LJ/q;)V

    :cond_32
    iget-boolean v6, v3, Lv1/T;->g:Z

    if-eqz v6, :cond_33

    invoke-virtual {v10}, Lv1/X;->f()Z

    move-result v6

    if-eqz v6, :cond_33

    iput v0, v10, Lv1/X;->g:I

    goto :goto_19

    :cond_33
    invoke-virtual {v10}, Lv1/X;->f()Z

    move-result v6

    if-eqz v6, :cond_36

    iget v6, v10, Lv1/X;->j:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_34

    move/from16 v6, v16

    goto :goto_18

    :cond_34
    const/4 v6, 0x0

    :goto_18
    if-nez v6, :cond_36

    invoke-virtual {v10}, Lv1/X;->g()Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_1a

    :cond_35
    :goto_19
    move/from16 v9, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_21

    :cond_36
    :goto_1a
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->t:LA5/t;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, LA5/t;->h(II)I

    move-result v6

    const/4 v8, 0x0

    iput-object v8, v10, Lv1/X;->s:Lv1/y;

    iput-object v2, v10, Lv1/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget v9, v10, Lv1/X;->f:I

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    cmp-long v13, p2, v19

    if-eqz v13, :cond_38

    iget-object v13, v1, Lv1/M;->g:Lv1/L;

    invoke-virtual {v13, v9}, Lv1/L;->a(I)Lv1/K;

    move-result-object v9

    iget-wide v13, v9, Lv1/K;->d:J

    cmp-long v9, v13, v17

    if-eqz v9, :cond_38

    add-long/2addr v13, v11

    cmp-long v9, v13, p2

    if-gez v9, :cond_37

    goto :goto_1b

    :cond_37
    move v6, v7

    move/from16 v9, v16

    goto/16 :goto_21

    :cond_38
    :goto_1b
    iget-object v9, v2, Landroidx/recyclerview/widget/RecyclerView;->B:Lv1/y;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v10, Lv1/X;->s:Lv1/y;

    if-nez v13, :cond_39

    move/from16 v13, v16

    goto :goto_1c

    :cond_39
    move v13, v7

    :goto_1c
    if-eqz v13, :cond_3b

    iput v6, v10, Lv1/X;->c:I

    iget-boolean v14, v9, Lv1/y;->b:Z

    if-eqz v14, :cond_3a

    invoke-virtual {v9, v6}, Lv1/y;->b(I)J

    move-result-wide v14

    iput-wide v14, v10, Lv1/X;->e:J

    :cond_3a
    iget v14, v10, Lv1/X;->j:I

    and-int/lit16 v14, v14, -0x208

    or-int/lit8 v14, v14, 0x1

    iput v14, v10, Lv1/X;->j:I

    sget v14, LF/h;->a:I

    const-string v14, "RV OnBindView"

    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_3b
    iput-object v9, v10, Lv1/X;->s:Lv1/y;

    invoke-virtual {v10}, Lv1/X;->d()Ljava/util/List;

    invoke-virtual {v9, v10, v6}, Lv1/y;->g(Lv1/X;I)V

    if-eqz v13, :cond_3e

    iget-object v6, v10, Lv1/X;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_3c
    iget v6, v10, Lv1/X;->j:I

    and-int/lit16 v6, v6, -0x401

    iput v6, v10, Lv1/X;->j:I

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v9, v6, Lv1/H;

    if-eqz v9, :cond_3d

    check-cast v6, Lv1/H;

    move/from16 v9, v16

    iput-boolean v9, v6, Lv1/H;->c:Z

    :cond_3d
    sget v6, LF/h;->a:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3e
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v13

    iget-object v6, v1, Lv1/M;->g:Lv1/L;

    iget v9, v10, Lv1/X;->f:I

    sub-long/2addr v13, v11

    invoke-virtual {v6, v9}, Lv1/L;->a(I)Lv1/K;

    move-result-object v6

    iget-wide v11, v6, Lv1/K;->d:J

    cmp-long v9, v11, v17

    if-nez v9, :cond_3f

    goto :goto_1d

    :cond_3f
    div-long v11, v11, v23

    mul-long v11, v11, v21

    div-long v13, v13, v23

    add-long/2addr v13, v11

    :goto_1d
    iput-wide v13, v6, Lv1/K;->d:J

    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->R:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v6, :cond_40

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_40

    const/4 v6, 0x1

    goto :goto_1e

    :cond_40
    move v6, v7

    :goto_1e
    if-eqz v6, :cond_46

    sget-object v6, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    const/4 v9, 0x1

    if-nez v6, :cond_41

    invoke-virtual {v5, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_41
    iget-object v6, v2, Landroidx/recyclerview/widget/RecyclerView;->D0:Lv1/Z;

    if-nez v6, :cond_42

    goto :goto_20

    :cond_42
    iget-object v6, v6, Lv1/Z;->e:Lv1/Y;

    if-eqz v6, :cond_45

    invoke-static {v5}, LJ/U;->c(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v11

    if-nez v11, :cond_43

    goto :goto_1f

    :cond_43
    instance-of v8, v11, LJ/a;

    if-eqz v8, :cond_44

    check-cast v11, LJ/a;

    iget-object v8, v11, LJ/a;->a:LJ/b;

    goto :goto_1f

    :cond_44
    new-instance v8, LJ/b;

    invoke-direct {v8, v11}, LJ/b;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    :goto_1f
    if-eqz v8, :cond_45

    if-eq v8, v6, :cond_45

    iget-object v11, v6, Lv1/Y;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v11, v5, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    invoke-static {v5, v6}, LJ/U;->l(Landroid/view/View;LJ/b;)V

    goto :goto_20

    :cond_46
    const/4 v9, 0x1

    :goto_20
    iget-boolean v3, v3, Lv1/T;->g:Z

    if-eqz v3, :cond_47

    iput v0, v10, Lv1/X;->g:I

    :cond_47
    move v6, v9

    :goto_21
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_48

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv1/H;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_48
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_49

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lv1/H;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_49
    check-cast v0, Lv1/H;

    :goto_22
    iput-object v10, v0, Lv1/H;->a:Lv1/X;

    if-eqz v4, :cond_4a

    if-eqz v6, :cond_4a

    move v7, v9

    :cond_4a
    iput-boolean v7, v0, Lv1/H;->d:Z

    return-object v10

    :cond_4b
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "("

    const-string v6, "). Item count:"

    const-string v7, "Invalid item position "

    invoke-static {v7, v0, v5, v0, v6}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lv1/T;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final m(Lv1/X;)V
    .locals 1

    iget-boolean v0, p1, Lv1/X;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv1/M;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv1/M;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lv1/X;->n:Lv1/M;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lv1/X;->o:Z

    iget v0, p1, Lv1/X;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p1, Lv1/X;->j:I

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lv1/M;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    if-eqz v0, :cond_0

    iget v0, v0, Lv1/G;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lv1/M;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lv1/M;->f:I

    iget-object v0, p0, Lv1/M;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lv1/M;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lv1/M;->h(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
