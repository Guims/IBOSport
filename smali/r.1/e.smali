.class public final Lr/e;
.super Lr/d;


# instance fields
.field public A0:I

.field public B0:[Lr/b;

.field public C0:[Lr/b;

.field public D0:I

.field public E0:Z

.field public F0:Z

.field public G0:Ljava/lang/ref/WeakReference;

.field public H0:Ljava/lang/ref/WeakReference;

.field public I0:Ljava/lang/ref/WeakReference;

.field public J0:Ljava/lang/ref/WeakReference;

.field public final K0:Ljava/util/HashSet;

.field public final L0:Ls/b;

.field public q0:Ljava/util/ArrayList;

.field public final r0:Lr0/C;

.field public final s0:Ls/e;

.field public t0:I

.field public u0:Lu/f;

.field public v0:Z

.field public final w0:Lp/c;

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lr/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/e;->q0:Ljava/util/ArrayList;

    new-instance v0, Lr0/C;

    invoke-direct {v0, p0}, Lr0/C;-><init>(Lr/e;)V

    iput-object v0, p0, Lr/e;->r0:Lr0/C;

    new-instance v0, Ls/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ls/e;->b:Z

    iput-boolean v1, v0, Ls/e;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ls/e;->e:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Ls/e;->f:Lu/f;

    new-instance v2, Ls/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Ls/e;->g:Ls/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ls/e;->h:Ljava/util/ArrayList;

    iput-object p0, v0, Ls/e;->a:Lr/e;

    iput-object p0, v0, Ls/e;->d:Lr/e;

    iput-object v0, p0, Lr/e;->s0:Ls/e;

    iput-object v1, p0, Lr/e;->u0:Lu/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/e;->v0:Z

    new-instance v2, Lp/c;

    invoke-direct {v2}, Lp/c;-><init>()V

    iput-object v2, p0, Lr/e;->w0:Lp/c;

    iput v0, p0, Lr/e;->z0:I

    iput v0, p0, Lr/e;->A0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lr/b;

    iput-object v3, p0, Lr/e;->B0:[Lr/b;

    new-array v2, v2, [Lr/b;

    iput-object v2, p0, Lr/e;->C0:[Lr/b;

    const/16 v2, 0x101

    iput v2, p0, Lr/e;->D0:I

    iput-boolean v0, p0, Lr/e;->E0:Z

    iput-boolean v0, p0, Lr/e;->F0:Z

    iput-object v1, p0, Lr/e;->G0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lr/e;->H0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lr/e;->I0:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lr/e;->J0:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lr/e;->K0:Ljava/util/HashSet;

    new-instance v0, Ls/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr/e;->L0:Ls/b;

    return-void
.end method

.method public static V(Lr/d;Lu/f;Ls/b;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lr/d;->g0:I

    iget-object v1, p0, Lr/d;->t:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_13

    instance-of v0, p0, Lr/h;

    if-nez v0, :cond_13

    instance-of v0, p0, Lr/a;

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v0, p0, Lr/d;->p0:[I

    aget v2, v0, v3

    iput v2, p2, Ls/b;->a:I

    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, p2, Ls/b;->b:I

    invoke-virtual {p0}, Lr/d;->q()I

    move-result v0

    iput v0, p2, Ls/b;->c:I

    invoke-virtual {p0}, Lr/d;->k()I

    move-result v0

    iput v0, p2, Ls/b;->d:I

    iput-boolean v3, p2, Ls/b;->i:Z

    iput v3, p2, Ls/b;->j:I

    iget v0, p2, Ls/b;->a:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iget v5, p2, Ls/b;->b:I

    if-ne v5, v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget v6, p0, Lr/d;->W:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v4, :cond_5

    iget v7, p0, Lr/d;->W:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    const/4 v7, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lr/d;->t(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, Lr/d;->r:I

    if-nez v8, :cond_7

    if-nez v6, :cond_7

    iput v7, p2, Ls/b;->a:I

    if-eqz v4, :cond_6

    iget v0, p0, Lr/d;->s:I

    if-nez v0, :cond_6

    iput v2, p2, Ls/b;->a:I

    :cond_6
    move v0, v3

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {p0, v2}, Lr/d;->t(I)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, p0, Lr/d;->s:I

    if-nez v8, :cond_9

    if-nez v5, :cond_9

    iput v7, p2, Ls/b;->b:I

    if-eqz v0, :cond_8

    iget v4, p0, Lr/d;->r:I

    if-nez v4, :cond_8

    iput v2, p2, Ls/b;->b:I

    :cond_8
    move v4, v3

    :cond_9
    invoke-virtual {p0}, Lr/d;->A()Z

    move-result v8

    if-eqz v8, :cond_a

    iput v2, p2, Ls/b;->a:I

    move v0, v3

    :cond_a
    invoke-virtual {p0}, Lr/d;->B()Z

    move-result v8

    if-eqz v8, :cond_b

    iput v2, p2, Ls/b;->b:I

    move v4, v3

    :cond_b
    const/4 v8, 0x4

    if-eqz v6, :cond_e

    aget v6, v1, v3

    if-ne v6, v8, :cond_c

    iput v2, p2, Ls/b;->a:I

    goto :goto_5

    :cond_c
    if-nez v4, :cond_e

    iget v4, p2, Ls/b;->b:I

    if-ne v4, v2, :cond_d

    iget v4, p2, Ls/b;->d:I

    goto :goto_4

    :cond_d
    iput v7, p2, Ls/b;->a:I

    invoke-virtual {p1, p0, p2}, Lu/f;->b(Lr/d;Ls/b;)V

    iget v4, p2, Ls/b;->f:I

    :goto_4
    iput v2, p2, Ls/b;->a:I

    iget v6, p0, Lr/d;->W:F

    int-to-float v4, v4

    mul-float/2addr v6, v4

    float-to-int v4, v6

    iput v4, p2, Ls/b;->c:I

    :cond_e
    :goto_5
    if-eqz v5, :cond_12

    aget v1, v1, v2

    if-ne v1, v8, :cond_f

    iput v2, p2, Ls/b;->b:I

    goto :goto_7

    :cond_f
    if-nez v0, :cond_12

    iget v0, p2, Ls/b;->a:I

    if-ne v0, v2, :cond_10

    iget v0, p2, Ls/b;->c:I

    goto :goto_6

    :cond_10
    iput v7, p2, Ls/b;->b:I

    invoke-virtual {p1, p0, p2}, Lu/f;->b(Lr/d;Ls/b;)V

    iget v0, p2, Ls/b;->e:I

    :goto_6
    iput v2, p2, Ls/b;->b:I

    iget v1, p0, Lr/d;->X:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    int-to-float v0, v0

    iget v1, p0, Lr/d;->W:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p2, Ls/b;->d:I

    goto :goto_7

    :cond_11
    iget v1, p0, Lr/d;->W:F

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p2, Ls/b;->d:I

    :cond_12
    :goto_7
    invoke-virtual {p1, p0, p2}, Lu/f;->b(Lr/d;Ls/b;)V

    iget p1, p2, Ls/b;->e:I

    invoke-virtual {p0, p1}, Lr/d;->O(I)V

    iget p1, p2, Ls/b;->f:I

    invoke-virtual {p0, p1}, Lr/d;->L(I)V

    iget-boolean p1, p2, Ls/b;->h:Z

    iput-boolean p1, p0, Lr/d;->E:Z

    iget p1, p2, Ls/b;->g:I

    invoke-virtual {p0, p1}, Lr/d;->I(I)V

    iput v3, p2, Ls/b;->j:I

    return-void

    :cond_13
    :goto_8
    iput v3, p2, Ls/b;->e:I

    iput v3, p2, Ls/b;->f:I

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    iget-object v0, p0, Lr/e;->w0:Lp/c;

    invoke-virtual {v0}, Lp/c;->t()V

    const/4 v0, 0x0

    iput v0, p0, Lr/e;->x0:I

    iput v0, p0, Lr/e;->y0:I

    iget-object v0, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lr/d;->C()V

    return-void
.end method

.method public final F(LJ/l;)V
    .locals 3

    invoke-super {p0, p1}, Lr/d;->F(LJ/l;)V

    iget-object v0, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/d;

    invoke-virtual {v2, p1}, Lr/d;->F(LJ/l;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final P(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lr/d;->P(ZZ)V

    iget-object v0, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr/d;

    invoke-virtual {v2, p1, p2}, Lr/d;->P(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final R(Lr/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget p2, p0, Lr/e;->z0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lr/e;->C0:[Lr/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lr/b;

    iput-object p2, p0, Lr/e;->C0:[Lr/b;

    :cond_0
    iget-object p2, p0, Lr/e;->C0:[Lr/b;

    iget v1, p0, Lr/e;->z0:I

    new-instance v2, Lr/b;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lr/e;->v0:Z

    invoke-direct {v2, p1, v3, v4}, Lr/b;-><init>(Lr/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lr/e;->z0:I

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    iget p2, p0, Lr/e;->A0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lr/e;->B0:[Lr/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lr/b;

    iput-object p2, p0, Lr/e;->B0:[Lr/b;

    :cond_2
    iget-object p2, p0, Lr/e;->B0:[Lr/b;

    iget v1, p0, Lr/e;->A0:I

    new-instance v2, Lr/b;

    iget-boolean v3, p0, Lr/e;->v0:Z

    invoke-direct {v2, p1, v0, v3}, Lr/b;-><init>(Lr/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    iput v1, p0, Lr/e;->A0:I

    :cond_3
    return-void
.end method

.method public final S(Lp/c;)V
    .locals 12

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lr/e;->W(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lr/d;->b(Lp/c;Z)V

    iget-object v1, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    iget-object v6, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    iget-object v7, v6, Lr/d;->S:[Z

    aput-boolean v2, v7, v2

    aput-boolean v2, v7, v5

    instance-of v6, v6, Lr/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eqz v4, :cond_8

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_8

    iget-object v6, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    instance-of v7, v6, Lr/a;

    if-eqz v7, :cond_7

    check-cast v6, Lr/a;

    move v7, v2

    :goto_2
    iget v8, v6, Lr/i;->r0:I

    if-ge v7, v8, :cond_7

    iget-object v8, v6, Lr/i;->q0:[Lr/d;

    aget-object v8, v8, v7

    iget-boolean v9, v6, Lr/a;->t0:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Lr/d;->c()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    iget v9, v6, Lr/a;->s0:I

    if-eqz v9, :cond_5

    if-ne v9, v5, :cond_3

    goto :goto_3

    :cond_3
    if-eq v9, v3, :cond_4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    :cond_4
    iget-object v8, v8, Lr/d;->S:[Z

    aput-boolean v5, v8, v5

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v8, v8, Lr/d;->S:[Z

    aput-boolean v5, v8, v2

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lr/e;->K0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v6, v2

    :goto_5
    if-ge v6, v1, :cond_c

    iget-object v7, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/d;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v8, v7, Lr/g;

    if-nez v8, :cond_9

    instance-of v9, v7, Lr/h;

    if-eqz v9, :cond_b

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {v7, p1, v0}, Lr/d;->b(Lp/c;Z)V

    :cond_b
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_11

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr/d;

    check-cast v8, Lr/g;

    move v9, v2

    :goto_8
    iget v10, v8, Lr/i;->r0:I

    if-ge v9, v10, :cond_d

    iget-object v10, v8, Lr/i;->q0:[Lr/d;

    aget-object v10, v10, v9

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v8, p1, v0}, Lr/g;->b(Lp/c;Z)V

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v7

    if-ne v6, v7, :cond_c

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr/d;

    invoke-virtual {v7, p1, v0}, Lr/d;->b(Lp/c;Z)V

    goto :goto_a

    :cond_10
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    goto :goto_7

    :cond_11
    sget-boolean v4, Lp/c;->q:Z

    if-eqz v4, :cond_16

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_b
    if-ge v4, v1, :cond_14

    iget-object v6, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lr/g;

    if-nez v7, :cond_13

    instance-of v7, v6, Lr/h;

    if-eqz v7, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_14
    iget-object v1, p0, Lr/d;->p0:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_15

    move v10, v2

    goto :goto_d

    :cond_15
    move v10, v5

    :goto_d
    const/4 v11, 0x0

    move-object v7, p0

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lr/d;->a(Lr/e;Lp/c;Ljava/util/HashSet;IZ)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/d;

    invoke-static {p0, v8, v1}, Lr/j;->b(Lr/e;Lp/c;Lr/d;)V

    invoke-virtual {v1, v8, v0}, Lr/d;->b(Lp/c;Z)V

    goto :goto_e

    :cond_16
    move-object v6, p0

    move-object v8, p1

    move p1, v2

    :goto_f
    if-ge p1, v1, :cond_1d

    iget-object v4, v6, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/d;

    instance-of v7, v4, Lr/e;

    if-eqz v7, :cond_1a

    iget-object v7, v4, Lr/d;->p0:[I

    aget v9, v7, v2

    aget v7, v7, v5

    if-ne v9, v3, :cond_17

    invoke-virtual {v4, v5}, Lr/d;->M(I)V

    :cond_17
    if-ne v7, v3, :cond_18

    invoke-virtual {v4, v5}, Lr/d;->N(I)V

    :cond_18
    invoke-virtual {v4, v8, v0}, Lr/d;->b(Lp/c;Z)V

    if-ne v9, v3, :cond_19

    invoke-virtual {v4, v9}, Lr/d;->M(I)V

    :cond_19
    if-ne v7, v3, :cond_1c

    invoke-virtual {v4, v7}, Lr/d;->N(I)V

    goto :goto_10

    :cond_1a
    invoke-static {p0, v8, v4}, Lr/j;->b(Lr/e;Lp/c;Lr/d;)V

    instance-of v7, v4, Lr/g;

    if-nez v7, :cond_1c

    instance-of v7, v4, Lr/h;

    if-eqz v7, :cond_1b

    goto :goto_10

    :cond_1b
    invoke-virtual {v4, v8, v0}, Lr/d;->b(Lp/c;Z)V

    :cond_1c
    :goto_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1d
    iget p1, v6, Lr/e;->z0:I

    const/4 v0, 0x0

    if-lez p1, :cond_1e

    invoke-static {p0, v8, v0, v2}, Lr/j;->a(Lr/e;Lp/c;Ljava/util/ArrayList;I)V

    :cond_1e
    iget p1, v6, Lr/e;->A0:I

    if-lez p1, :cond_1f

    invoke-static {p0, v8, v0, v5}, Lr/j;->a(Lr/e;Lp/c;Ljava/util/ArrayList;I)V

    :cond_1f
    return-void
.end method

.method public final T(IZ)Z
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lr/e;->s0:Ls/e;

    iget-object v3, v2, Ls/e;->e:Ljava/util/ArrayList;

    iget-object v4, v2, Ls/e;->a:Lr/e;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lr/d;->j(I)I

    move-result v6

    iget-object v7, v4, Lr/d;->p0:[I

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lr/d;->j(I)I

    move-result v9

    invoke-virtual {v4}, Lr/d;->r()I

    move-result v10

    invoke-virtual {v4}, Lr/d;->s()I

    move-result v11

    if-eqz p2, :cond_4

    const/4 v12, 0x2

    if-eq v6, v12, :cond_0

    if-ne v9, v12, :cond_4

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v5

    :goto_0
    if-ge v14, v13, :cond_2

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Ls/o;

    iget v5, v15, Ls/o;->f:I

    if-ne v5, v0, :cond_1

    invoke-virtual {v15}, Ls/o;->k()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move/from16 v5, p2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v5, :cond_4

    if-ne v6, v12, :cond_4

    invoke-virtual {v4, v8}, Lr/d;->M(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ls/e;->d(Lr/e;I)I

    move-result v12

    invoke-virtual {v4, v12}, Lr/d;->O(I)V

    iget-object v5, v4, Lr/d;->d:Ls/k;

    iget-object v5, v5, Ls/o;->e:Ls/g;

    invoke-virtual {v4}, Lr/d;->q()I

    move-result v12

    invoke-virtual {v5, v12}, Ls/g;->d(I)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    if-ne v9, v12, :cond_4

    invoke-virtual {v4, v8}, Lr/d;->N(I)V

    invoke-virtual {v2, v4, v8}, Ls/e;->d(Lr/e;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lr/d;->L(I)V

    iget-object v5, v4, Lr/d;->e:Ls/m;

    iget-object v5, v5, Ls/o;->e:Ls/g;

    invoke-virtual {v4}, Lr/d;->k()I

    move-result v12

    invoke-virtual {v5, v12}, Ls/g;->d(I)V

    :cond_4
    :goto_2
    const/4 v5, 0x4

    if-nez v0, :cond_6

    const/16 v16, 0x0

    aget v7, v7, v16

    if-eq v7, v8, :cond_5

    if-ne v7, v5, :cond_7

    :cond_5
    invoke-virtual {v4}, Lr/d;->q()I

    move-result v5

    add-int/2addr v5, v10

    iget-object v7, v4, Lr/d;->d:Ls/k;

    iget-object v7, v7, Ls/o;->i:Ls/f;

    invoke-virtual {v7, v5}, Ls/f;->d(I)V

    iget-object v7, v4, Lr/d;->d:Ls/k;

    iget-object v7, v7, Ls/o;->e:Ls/g;

    sub-int/2addr v5, v10

    invoke-virtual {v7, v5}, Ls/g;->d(I)V

    :goto_3
    move v5, v8

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    aget v7, v7, v8

    if-eq v7, v8, :cond_8

    if-ne v7, v5, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v5, v16

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {v4}, Lr/d;->k()I

    move-result v5

    add-int/2addr v5, v11

    iget-object v7, v4, Lr/d;->e:Ls/m;

    iget-object v7, v7, Ls/o;->i:Ls/f;

    invoke-virtual {v7, v5}, Ls/f;->d(I)V

    iget-object v7, v4, Lr/d;->e:Ls/m;

    iget-object v7, v7, Ls/o;->e:Ls/g;

    sub-int/2addr v5, v11

    invoke-virtual {v7, v5}, Ls/g;->d(I)V

    goto :goto_3

    :goto_5
    invoke-virtual {v2}, Ls/e;->g()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v7, v16

    :goto_6
    if-ge v7, v2, :cond_b

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Ls/o;

    iget v11, v10, Ls/o;->f:I

    if-eq v11, v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v11, v10, Ls/o;->b:Lr/d;

    if-ne v11, v4, :cond_a

    iget-boolean v11, v10, Ls/o;->g:Z

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Ls/o;->e()V

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v7, v16

    :cond_c
    :goto_7
    if-ge v7, v2, :cond_11

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Ls/o;

    iget v11, v10, Ls/o;->f:I

    if-eq v11, v0, :cond_d

    goto :goto_7

    :cond_d
    if-nez v5, :cond_e

    iget-object v11, v10, Ls/o;->b:Lr/d;

    if-ne v11, v4, :cond_e

    goto :goto_7

    :cond_e
    iget-object v11, v10, Ls/o;->h:Ls/f;

    iget-boolean v11, v11, Ls/f;->j:Z

    if-nez v11, :cond_f

    :goto_8
    move/from16 v5, v16

    goto :goto_9

    :cond_f
    iget-object v11, v10, Ls/o;->i:Ls/f;

    iget-boolean v11, v11, Ls/f;->j:Z

    if-nez v11, :cond_10

    goto :goto_8

    :cond_10
    instance-of v11, v10, Ls/c;

    if-nez v11, :cond_c

    iget-object v10, v10, Ls/o;->e:Ls/g;

    iget-boolean v10, v10, Ls/f;->j:Z

    if-nez v10, :cond_c

    goto :goto_8

    :cond_11
    move v5, v8

    :goto_9
    invoke-virtual {v4, v6}, Lr/d;->M(I)V

    invoke-virtual {v4, v9}, Lr/d;->N(I)V

    return v5
.end method

.method public final U()V
    .locals 32

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Lr/d;->Y:I

    iput v2, v1, Lr/d;->Z:I

    iput-boolean v2, v1, Lr/e;->E0:Z

    iput-boolean v2, v1, Lr/e;->F0:Z

    iget-object v0, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v1, Lr/d;->p0:[I

    const/4 v6, 0x1

    aget v7, v5, v6

    aget v8, v5, v2

    iget v9, v1, Lr/e;->t0:I

    iget-object v11, v1, Lr/d;->J:Lr/c;

    iget-object v12, v1, Lr/d;->I:Lr/c;

    if-nez v9, :cond_1e

    iget v9, v1, Lr/e;->D0:I

    invoke-static {v9, v6}, Lr/j;->c(II)Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-object v9, v1, Lr/e;->u0:Lu/f;

    aget v14, v5, v2

    aget v15, v5, v6

    invoke-virtual {v1}, Lr/d;->E()V

    iget-object v10, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_0
    if-ge v2, v13, :cond_0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lr/d;

    invoke-virtual/range {v18 .. v18}, Lr/d;->E()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lr/e;->v0:Z

    if-ne v14, v6, :cond_1

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v14

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v14}, Lr/d;->J(II)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Lr/c;->l(I)V

    iput v6, v1, Lr/d;->Y:I

    :goto_1
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_2
    const/high16 v20, 0x3f000000    # 0.5f

    if-ge v6, v13, :cond_7

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v5

    move-object/from16 v5, v21

    check-cast v5, Lr/d;

    move/from16 v21, v6

    instance-of v6, v5, Lr/h;

    if-eqz v6, :cond_6

    check-cast v5, Lr/h;

    iget v6, v5, Lr/h;->u0:I

    move/from16 v23, v14

    const/4 v14, 0x1

    if-ne v6, v14, :cond_5

    iget v6, v5, Lr/h;->r0:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_2

    invoke-virtual {v5, v6}, Lr/h;->R(I)V

    goto :goto_3

    :cond_2
    iget v6, v5, Lr/h;->s0:I

    if-eq v6, v14, :cond_3

    invoke-virtual {v1}, Lr/d;->A()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v6

    iget v14, v5, Lr/h;->s0:I

    sub-int/2addr v6, v14

    invoke-virtual {v5, v6}, Lr/h;->R(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lr/d;->A()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Lr/h;->q0:F

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v6, v14

    add-float v6, v6, v20

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lr/h;->R(I)V

    :cond_4
    :goto_3
    const/16 v23, 0x1

    :cond_5
    move/from16 v14, v23

    goto :goto_4

    :cond_6
    move/from16 v23, v14

    instance-of v6, v5, Lr/a;

    if-eqz v6, :cond_5

    check-cast v5, Lr/a;

    invoke-virtual {v5}, Lr/a;->U()I

    move-result v5

    if-nez v5, :cond_5

    move/from16 v14, v23

    const/16 v19, 0x1

    :goto_4
    add-int/lit8 v6, v21, 0x1

    move-object/from16 v5, v22

    goto :goto_2

    :cond_7
    move-object/from16 v22, v5

    move/from16 v23, v14

    if-eqz v23, :cond_a

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v13, :cond_a

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    instance-of v14, v6, Lr/h;

    if-eqz v14, :cond_9

    check-cast v6, Lr/h;

    iget v14, v6, Lr/h;->u0:I

    move/from16 v21, v5

    const/4 v5, 0x1

    if-ne v14, v5, :cond_8

    const/4 v5, 0x0

    invoke-static {v5, v6, v9, v2}, Ls/h;->c(ILr/d;Lu/f;Z)V

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    move/from16 v21, v5

    goto :goto_6

    :goto_7
    add-int/lit8 v6, v21, 0x1

    move v5, v6

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    invoke-static {v5, v1, v9, v2}, Ls/h;->c(ILr/d;Lu/f;Z)V

    if-eqz v19, :cond_c

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v13, :cond_c

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    instance-of v14, v6, Lr/a;

    if-eqz v14, :cond_b

    check-cast v6, Lr/a;

    invoke-virtual {v6}, Lr/a;->U()I

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v6}, Lr/a;->T()Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    invoke-static {v14, v6, v9, v2}, Ls/h;->c(ILr/d;Lu/f;Z)V

    goto :goto_9

    :cond_b
    const/4 v14, 0x1

    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    const/4 v14, 0x1

    if-ne v15, v14, :cond_d

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Lr/d;->K(II)V

    goto :goto_a

    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Lr/c;->l(I)V

    iput v6, v1, Lr/d;->Z:I

    :goto_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_b
    if-ge v5, v13, :cond_13

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr/d;

    move/from16 v19, v5

    instance-of v5, v15, Lr/h;

    if-eqz v5, :cond_11

    check-cast v15, Lr/h;

    iget v5, v15, Lr/h;->u0:I

    if-nez v5, :cond_12

    iget v5, v15, Lr/h;->r0:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_e

    invoke-virtual {v15, v5}, Lr/h;->R(I)V

    goto :goto_c

    :cond_e
    iget v5, v15, Lr/h;->s0:I

    if-eq v5, v6, :cond_f

    invoke-virtual {v1}, Lr/d;->B()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v5

    iget v6, v15, Lr/h;->s0:I

    sub-int/2addr v5, v6

    invoke-virtual {v15, v5}, Lr/h;->R(I)V

    goto :goto_c

    :cond_f
    invoke-virtual {v1}, Lr/d;->B()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, v15, Lr/h;->q0:F

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v5, v5, v20

    float-to-int v5, v5

    invoke-virtual {v15, v5}, Lr/h;->R(I)V

    :cond_10
    :goto_c
    const/4 v6, 0x1

    goto :goto_d

    :cond_11
    instance-of v5, v15, Lr/a;

    if-eqz v5, :cond_12

    check-cast v15, Lr/a;

    invoke-virtual {v15}, Lr/a;->U()I

    move-result v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_12

    const/4 v14, 0x1

    :cond_12
    :goto_d
    add-int/lit8 v5, v19, 0x1

    goto :goto_b

    :cond_13
    if-eqz v6, :cond_15

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v13, :cond_15

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    instance-of v15, v6, Lr/h;

    if-eqz v15, :cond_14

    check-cast v6, Lr/h;

    iget v15, v6, Lr/h;->u0:I

    if-nez v15, :cond_14

    const/4 v15, 0x1

    invoke-static {v15, v6, v9}, Ls/h;->i(ILr/d;Lu/f;)V

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    invoke-static {v6, v1, v9}, Ls/h;->i(ILr/d;Lu/f;)V

    if-eqz v14, :cond_17

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v13, :cond_17

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    instance-of v14, v6, Lr/a;

    if-eqz v14, :cond_16

    check-cast v6, Lr/a;

    invoke-virtual {v6}, Lr/a;->U()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16

    invoke-virtual {v6}, Lr/a;->T()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-static {v15, v6, v9}, Ls/h;->i(ILr/d;Lu/f;)V

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_10
    if-ge v5, v13, :cond_1b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    invoke-virtual {v6}, Lr/d;->z()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-static {v6}, Ls/h;->a(Lr/d;)Z

    move-result v14

    if-eqz v14, :cond_1a

    sget-object v14, Ls/h;->a:Ls/b;

    invoke-static {v6, v9, v14}, Lr/e;->V(Lr/d;Lu/f;Ls/b;)V

    instance-of v14, v6, Lr/h;

    if-eqz v14, :cond_19

    move-object v14, v6

    check-cast v14, Lr/h;

    iget v14, v14, Lr/h;->u0:I

    if-nez v14, :cond_18

    const/4 v14, 0x0

    invoke-static {v14, v6, v9}, Ls/h;->i(ILr/d;Lu/f;)V

    goto :goto_11

    :cond_18
    const/4 v14, 0x0

    invoke-static {v14, v6, v9, v2}, Ls/h;->c(ILr/d;Lu/f;Z)V

    goto :goto_11

    :cond_19
    const/4 v14, 0x0

    invoke-static {v14, v6, v9, v2}, Ls/h;->c(ILr/d;Lu/f;Z)V

    invoke-static {v14, v6, v9}, Ls/h;->i(ILr/d;Lu/f;)V

    :cond_1a
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_1f

    iget-object v5, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/d;

    invoke-virtual {v5}, Lr/d;->z()Z

    move-result v6

    if-eqz v6, :cond_1d

    instance-of v6, v5, Lr/h;

    if-nez v6, :cond_1d

    instance-of v6, v5, Lr/a;

    if-nez v6, :cond_1d

    instance-of v6, v5, Lr/g;

    if-nez v6, :cond_1d

    iget-boolean v6, v5, Lr/d;->F:Z

    if-nez v6, :cond_1d

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lr/d;->j(I)I

    move-result v9

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lr/d;->j(I)I

    move-result v6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1c

    iget v9, v5, Lr/d;->r:I

    if-eq v9, v15, :cond_1c

    if-ne v6, v10, :cond_1c

    iget v6, v5, Lr/d;->s:I

    if-eq v6, v15, :cond_1c

    goto :goto_13

    :cond_1c
    new-instance v6, Ls/b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v9, v1, Lr/e;->u0:Lu/f;

    invoke-static {v5, v9, v6}, Lr/e;->V(Lr/d;Lu/f;Ls/b;)V

    :cond_1d
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1e
    move-object/from16 v22, v5

    :cond_1f
    const/4 v5, 0x2

    iget-object v9, v1, Lr/e;->w0:Lp/c;

    if-le v3, v5, :cond_20

    if-eq v8, v5, :cond_21

    if-ne v7, v5, :cond_20

    goto :goto_14

    :cond_20
    move/from16 v24, v3

    move v5, v4

    move v4, v7

    move v2, v8

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    move v3, v0

    goto/16 :goto_36

    :cond_21
    :goto_14
    iget v10, v1, Lr/e;->D0:I

    const/16 v13, 0x400

    invoke-static {v10, v13}, Lr/j;->c(II)Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, v1, Lr/e;->u0:Lu/f;

    iget-object v13, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_15
    if-ge v15, v14, :cond_24

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v2, v19

    check-cast v2, Lr/d;

    const/16 v17, 0x0

    aget v5, v22, v17

    const/16 v18, 0x1

    aget v6, v22, v18

    move/from16 v23, v15

    iget-object v15, v2, Lr/d;->p0:[I

    move-object/from16 v24, v15

    aget v15, v24, v17

    move-object/from16 v25, v12

    aget v12, v24, v18

    invoke-static {v5, v6, v15, v12}, Ls/h;->h(IIII)Z

    move-result v5

    if-nez v5, :cond_22

    :goto_16
    move/from16 v29, v0

    move/from16 v24, v3

    move/from16 v26, v4

    move/from16 v28, v7

    move/from16 v31, v8

    move-object/from16 v23, v11

    goto/16 :goto_2f

    :cond_22
    instance-of v2, v2, Lr/g;

    if-eqz v2, :cond_23

    goto :goto_16

    :cond_23
    add-int/lit8 v15, v23, 0x1

    move-object/from16 v12, v25

    const/4 v5, 0x2

    goto :goto_15

    :cond_24
    move-object/from16 v25, v12

    move/from16 v24, v3

    move-object/from16 v23, v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_17
    if-ge v2, v14, :cond_35

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v27, v2

    move-object/from16 v2, v26

    check-cast v2, Lr/d;

    move/from16 v26, v4

    const/16 v17, 0x0

    aget v4, v22, v17

    move/from16 v28, v7

    const/16 v18, 0x1

    aget v7, v22, v18

    move/from16 v29, v0

    iget-object v0, v2, Lr/d;->p0:[I

    move-object/from16 v30, v0

    aget v0, v30, v17

    move/from16 v31, v8

    aget v8, v30, v18

    invoke-static {v4, v7, v0, v8}, Ls/h;->h(IIII)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lr/e;->L0:Ls/b;

    invoke-static {v2, v10, v0}, Lr/e;->V(Lr/d;Lu/f;Ls/b;)V

    :cond_25
    instance-of v0, v2, Lr/h;

    if-eqz v0, :cond_29

    move-object v4, v2

    check-cast v4, Lr/h;

    iget v7, v4, Lr/h;->u0:I

    if-nez v7, :cond_27

    if-nez v12, :cond_26

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    iget v7, v4, Lr/h;->u0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_29

    if-nez v5, :cond_28

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_28
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    instance-of v4, v2, Lr/i;

    if-eqz v4, :cond_30

    instance-of v4, v2, Lr/a;

    if-eqz v4, :cond_2d

    move-object v4, v2

    check-cast v4, Lr/a;

    invoke-virtual {v4}, Lr/a;->U()I

    move-result v7

    if-nez v7, :cond_2b

    if-nez v6, :cond_2a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2a
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v4}, Lr/a;->U()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_30

    if-nez v15, :cond_2c

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2d
    move-object v4, v2

    check-cast v4, Lr/i;

    if-nez v6, :cond_2e

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_2e
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_2f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_18
    iget-object v4, v2, Lr/d;->I:Lr/c;

    iget-object v4, v4, Lr/c;->f:Lr/c;

    if-nez v4, :cond_32

    iget-object v4, v2, Lr/d;->K:Lr/c;

    iget-object v4, v4, Lr/c;->f:Lr/c;

    if-nez v4, :cond_32

    if-nez v0, :cond_32

    instance-of v4, v2, Lr/a;

    if-nez v4, :cond_32

    if-nez v11, :cond_31

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    iget-object v4, v2, Lr/d;->J:Lr/c;

    iget-object v4, v4, Lr/c;->f:Lr/c;

    if-nez v4, :cond_34

    iget-object v4, v2, Lr/d;->L:Lr/c;

    iget-object v4, v4, Lr/c;->f:Lr/c;

    if-nez v4, :cond_34

    iget-object v4, v2, Lr/d;->M:Lr/c;

    iget-object v4, v4, Lr/c;->f:Lr/c;

    if-nez v4, :cond_34

    if-nez v0, :cond_34

    instance-of v0, v2, Lr/a;

    if-nez v0, :cond_34

    if-nez v3, :cond_33

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v27, 0x1

    move/from16 v4, v26

    move/from16 v7, v28

    move/from16 v0, v29

    move/from16 v8, v31

    goto/16 :goto_17

    :cond_35
    move/from16 v29, v0

    move/from16 v26, v4

    move/from16 v28, v7

    move/from16 v31, v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v2, :cond_36

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Lr/h;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v10, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_19

    :cond_36
    if-eqz v6, :cond_37

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_37

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lr/i;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v10, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    move-result-object v7

    invoke-virtual {v5, v10, v0, v7}, Lr/i;->R(ILjava/util/ArrayList;Ls/n;)V

    invoke-virtual {v7, v0}, Ls/n;->a(Ljava/util/ArrayList;)V

    goto :goto_1a

    :cond_37
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lr/d;->i(I)Lr/c;

    move-result-object v4

    iget-object v2, v4, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/c;

    iget-object v4, v4, Lr/c;->d:Lr/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_1b

    :cond_38
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lr/d;->i(I)Lr/c;

    move-result-object v2

    iget-object v2, v2, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/c;

    iget-object v4, v4, Lr/c;->d:Lr/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v6, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_1c

    :cond_39
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lr/d;->i(I)Lr/c;

    move-result-object v4

    iget-object v4, v4, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/c;

    iget-object v5, v5, Lr/c;->d:Lr/d;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_1d

    :cond_3a
    if-eqz v11, :cond_3b

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_3b

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lr/d;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v10, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_1e

    :cond_3b
    if-eqz v12, :cond_3c

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_3c

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lr/h;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_1f

    :cond_3c
    if-eqz v15, :cond_3d

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_3d

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lr/i;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v6, v7, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    move-result-object v10

    invoke-virtual {v6, v7, v0, v10}, Lr/i;->R(ILjava/util/ArrayList;Ls/n;)V

    invoke-virtual {v10, v0}, Ls/n;->a(Ljava/util/ArrayList;)V

    goto :goto_20

    :cond_3d
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Lr/d;->i(I)Lr/c;

    move-result-object v4

    iget-object v4, v4, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/c;

    iget-object v5, v5, Lr/c;->d:Lr/d;

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-static {v5, v15, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_21

    :cond_3e
    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lr/d;->i(I)Lr/c;

    move-result-object v4

    iget-object v4, v4, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_3f

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/c;

    iget-object v5, v5, Lr/c;->d:Lr/d;

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-static {v5, v15, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_22

    :cond_3f
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lr/d;->i(I)Lr/c;

    move-result-object v5

    iget-object v4, v5, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_40

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/c;

    iget-object v5, v5, Lr/c;->d:Lr/d;

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-static {v5, v15, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_23

    :cond_40
    invoke-virtual {v1, v2}, Lr/d;->i(I)Lr/c;

    move-result-object v2

    iget-object v2, v2, Lr/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr/c;

    iget-object v4, v4, Lr/c;->d:Lr/d;

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-static {v4, v15, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_24

    :cond_41
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v2, :cond_42

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lr/d;

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-static {v5, v15, v0, v8}, Ls/h;->b(Lr/d;ILjava/util/ArrayList;Ls/n;)Ls/n;

    goto :goto_25

    :cond_42
    const/4 v15, 0x1

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v14, :cond_48

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr/d;

    iget-object v4, v3, Lr/d;->p0:[I

    const/16 v17, 0x0

    aget v5, v4, v17

    const/4 v10, 0x3

    if-ne v5, v10, :cond_47

    aget v4, v4, v15

    if-ne v4, v10, :cond_47

    iget v4, v3, Lr/d;->n0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_27
    if-ge v6, v5, :cond_44

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/n;

    iget v8, v7, Ls/n;->b:I

    if-ne v4, v8, :cond_43

    goto :goto_28

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_44
    const/4 v7, 0x0

    :goto_28
    iget v3, v3, Lr/d;->o0:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v4, :cond_46

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls/n;

    iget v8, v6, Ls/n;->b:I

    if-ne v3, v8, :cond_45

    goto :goto_2a

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_46
    const/4 v6, 0x0

    :goto_2a
    if-eqz v7, :cond_47

    if-eqz v6, :cond_47

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v6}, Ls/n;->c(ILs/n;)V

    const/4 v3, 0x2

    iput v3, v6, Ls/n;->c:I

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x1

    goto :goto_26

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x1

    if-gt v2, v15, :cond_49

    goto/16 :goto_2f

    :cond_49
    const/16 v17, 0x0

    aget v2, v22, v17

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_4a
    :goto_2b
    if-ge v4, v2, :cond_4c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ls/n;

    iget v7, v6, Ls/n;->c:I

    const/4 v15, 0x1

    if-ne v7, v15, :cond_4b

    goto :goto_2b

    :cond_4b
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Ls/n;->b(Lp/c;I)I

    move-result v7

    if-le v7, v3, :cond_4a

    move-object v5, v6

    move v3, v7

    goto :goto_2b

    :cond_4c
    const/4 v15, 0x1

    if-eqz v5, :cond_4e

    invoke-virtual {v1, v15}, Lr/d;->M(I)V

    invoke-virtual {v1, v3}, Lr/d;->O(I)V

    goto :goto_2c

    :cond_4d
    const/4 v15, 0x1

    :cond_4e
    const/4 v5, 0x0

    :goto_2c
    aget v2, v22, v15

    const/4 v3, 0x2

    if-ne v2, v3, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_4f
    :goto_2d
    if-ge v4, v2, :cond_51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    check-cast v7, Ls/n;

    iget v8, v7, Ls/n;->c:I

    if-nez v8, :cond_50

    goto :goto_2d

    :cond_50
    const/4 v15, 0x1

    invoke-virtual {v7, v9, v15}, Ls/n;->b(Lp/c;I)I

    move-result v8

    if-le v8, v3, :cond_4f

    move-object v6, v7

    move v3, v8

    goto :goto_2d

    :cond_51
    const/4 v15, 0x1

    if-eqz v6, :cond_52

    invoke-virtual {v1, v15}, Lr/d;->N(I)V

    invoke-virtual {v1, v3}, Lr/d;->L(I)V

    goto :goto_2e

    :cond_52
    const/4 v6, 0x0

    :goto_2e
    if-nez v5, :cond_53

    if-eqz v6, :cond_54

    :cond_53
    move/from16 v2, v31

    const/4 v3, 0x2

    goto :goto_30

    :cond_54
    :goto_2f
    move/from16 v5, v26

    move/from16 v4, v28

    move/from16 v3, v29

    move/from16 v2, v31

    goto :goto_36

    :goto_30
    if-ne v2, v3, :cond_56

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v0

    move/from16 v3, v29

    if-ge v3, v0, :cond_55

    if-lez v3, :cond_55

    invoke-virtual {v1, v3}, Lr/d;->O(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lr/e;->E0:Z

    goto :goto_32

    :cond_55
    invoke-virtual {v1}, Lr/d;->q()I

    move-result v0

    :goto_31
    move/from16 v4, v28

    const/4 v3, 0x2

    goto :goto_33

    :cond_56
    move/from16 v3, v29

    :goto_32
    move v0, v3

    goto :goto_31

    :goto_33
    if-ne v4, v3, :cond_58

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v3

    move/from16 v5, v26

    if-ge v5, v3, :cond_57

    if-lez v5, :cond_57

    invoke-virtual {v1, v5}, Lr/d;->L(I)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lr/e;->F0:Z

    goto :goto_34

    :cond_57
    invoke-virtual {v1}, Lr/d;->k()I

    move-result v3

    goto :goto_35

    :cond_58
    move/from16 v5, v26

    :goto_34
    move v3, v5

    :goto_35
    move v5, v3

    move v3, v0

    const/4 v0, 0x1

    goto :goto_37

    :goto_36
    const/4 v0, 0x0

    :goto_37
    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Lr/e;->W(I)Z

    move-result v7

    if-nez v7, :cond_5a

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Lr/e;->W(I)Z

    move-result v7

    if-eqz v7, :cond_59

    goto :goto_38

    :cond_59
    const/4 v7, 0x0

    goto :goto_39

    :cond_5a
    :goto_38
    const/4 v7, 0x1

    :goto_39
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lp/c;->h:Z

    iget v8, v1, Lr/e;->D0:I

    if-eqz v8, :cond_5b

    if-eqz v7, :cond_5b

    const/4 v15, 0x1

    iput-boolean v15, v9, Lp/c;->h:Z

    goto :goto_3a

    :cond_5b
    const/4 v15, 0x1

    :goto_3a
    iget-object v7, v1, Lr/e;->q0:Ljava/util/ArrayList;

    aget v8, v22, v10

    const/4 v11, 0x2

    if-eq v8, v11, :cond_5d

    aget v8, v22, v15

    if-ne v8, v11, :cond_5c

    goto :goto_3b

    :cond_5c
    move v8, v10

    goto :goto_3c

    :cond_5d
    :goto_3b
    const/4 v8, 0x1

    :goto_3c
    iput v10, v1, Lr/e;->z0:I

    iput v10, v1, Lr/e;->A0:I

    move/from16 v11, v24

    const/4 v10, 0x0

    :goto_3d
    if-ge v10, v11, :cond_5f

    iget-object v12, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr/d;

    instance-of v13, v12, Lr/e;

    if-eqz v13, :cond_5e

    check-cast v12, Lr/e;

    invoke-virtual {v12}, Lr/e;->U()V

    :cond_5e
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    :cond_5f
    invoke-virtual {v1, v6}, Lr/e;->W(I)Z

    move-result v10

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_3e
    if-eqz v13, :cond_73

    const/16 v18, 0x1

    add-int/lit8 v14, v0, 0x1

    :try_start_0
    invoke-virtual {v9}, Lp/c;->t()V

    const/4 v15, 0x0

    iput v15, v1, Lr/e;->z0:I

    iput v15, v1, Lr/e;->A0:I

    invoke-virtual {v1, v9}, Lr/d;->g(Lp/c;)V

    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v11, :cond_60

    iget-object v15, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr/d;

    invoke-virtual {v15, v9}, Lr/d;->g(Lp/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :catch_0
    move-exception v0

    move-object/from16 v15, v23

    const/4 v6, 0x0

    move/from16 v23, v8

    const/4 v8, 0x5

    goto/16 :goto_48

    :cond_60
    invoke-virtual {v1, v9}, Lr/e;->S(Lp/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lr/e;->G0:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v0, :cond_61

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lr/e;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v15, v23

    :try_start_3
    invoke-virtual {v9, v15}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v9, v0}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v23, v8

    const/4 v6, 0x5

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v9, v0, v13, v8, v6}, Lp/c;->f(Lp/f;Lp/f;II)V

    const/4 v8, 0x0

    iput-object v8, v1, Lr/e;->G0:Ljava/lang/ref/WeakReference;

    goto :goto_44

    :catch_1
    move-exception v0

    :goto_40
    const/4 v6, 0x0

    :goto_41
    const/4 v8, 0x5

    :goto_42
    const/4 v13, 0x1

    goto/16 :goto_48

    :catch_2
    move-exception v0

    goto :goto_43

    :catch_3
    move-exception v0

    :goto_43
    move/from16 v23, v8

    goto :goto_40

    :catch_4
    move-exception v0

    move-object/from16 v15, v23

    goto :goto_43

    :cond_61
    move-object/from16 v15, v23

    move/from16 v23, v8

    :goto_44
    iget-object v0, v1, Lr/e;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Lr/e;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/c;

    iget-object v6, v1, Lr/d;->L:Lr/c;

    invoke-virtual {v9, v6}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v6

    invoke-virtual {v9, v0}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v0

    const/4 v8, 0x5

    const/4 v13, 0x0

    invoke-virtual {v9, v6, v0, v13, v8}, Lp/c;->f(Lp/f;Lp/f;II)V

    const/4 v8, 0x0

    iput-object v8, v1, Lr/e;->I0:Ljava/lang/ref/WeakReference;

    :cond_62
    iget-object v0, v1, Lr/e;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, v1, Lr/e;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/c;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v6, v25

    :try_start_6
    invoke-virtual {v9, v6}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v8

    invoke-virtual {v9, v0}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v25, v6

    const/4 v6, 0x0

    const/4 v13, 0x5

    :try_start_7
    invoke-virtual {v9, v0, v8, v6, v13}, Lp/c;->f(Lp/f;Lp/f;II)V

    const/4 v8, 0x0

    iput-object v8, v1, Lr/e;->H0:Ljava/lang/ref/WeakReference;

    goto :goto_45

    :catch_5
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_40

    :cond_63
    :goto_45
    iget-object v0, v1, Lr/e;->J0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lr/e;->J0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/c;

    iget-object v6, v1, Lr/d;->K:Lr/c;

    invoke-virtual {v9, v6}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v9, v0}, Lp/c;->k(Ljava/lang/Object;)Lp/f;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v8, 0x5

    const/4 v13, 0x0

    :try_start_9
    invoke-virtual {v9, v6, v0, v13, v8}, Lp/c;->f(Lp/f;Lp/f;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    const/4 v6, 0x0

    :try_start_a
    iput-object v6, v1, Lr/e;->J0:Ljava/lang/ref/WeakReference;

    goto :goto_47

    :catch_6
    move-exception v0

    goto/16 :goto_42

    :catch_7
    move-exception v0

    :goto_46
    const/4 v6, 0x0

    goto/16 :goto_42

    :catch_8
    move-exception v0

    const/4 v8, 0x5

    goto :goto_46

    :cond_64
    const/4 v6, 0x0

    const/4 v8, 0x5

    :goto_47
    invoke-virtual {v9}, Lp/c;->p()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move/from16 v24, v12

    const/4 v13, 0x1

    goto :goto_49

    :catch_9
    move-exception v0

    move-object/from16 v15, v23

    const/4 v6, 0x0

    move/from16 v23, v8

    goto/16 :goto_41

    :goto_48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v24, v12

    const-string v12, "EXCEPTION : "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_49
    sget-object v0, Lr/j;->a:[Z

    if-eqz v13, :cond_68

    const/16 v17, 0x0

    const/16 v19, 0x2

    aput-boolean v17, v0, v19

    const/16 v6, 0x40

    invoke-virtual {v1, v6}, Lr/e;->W(I)Z

    move-result v8

    invoke-virtual {v1, v9, v8}, Lr/d;->Q(Lp/c;Z)V

    iget-object v12, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_4a
    if-ge v13, v12, :cond_67

    iget-object v6, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    invoke-virtual {v6, v9, v8}, Lr/d;->Q(Lp/c;Z)V

    move-object/from16 v27, v0

    iget v0, v6, Lr/d;->h:I

    move/from16 v28, v8

    const/4 v8, -0x1

    if-ne v0, v8, :cond_65

    iget v0, v6, Lr/d;->i:I

    if-eq v0, v8, :cond_66

    :cond_65
    const/16 v16, 0x1

    :cond_66
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v27

    move/from16 v8, v28

    const/16 v6, 0x40

    goto :goto_4a

    :cond_67
    move-object/from16 v27, v0

    const/4 v8, -0x1

    goto :goto_4c

    :cond_68
    move-object/from16 v27, v0

    const/4 v8, -0x1

    invoke-virtual {v1, v9, v10}, Lr/d;->Q(Lp/c;Z)V

    const/4 v0, 0x0

    :goto_4b
    if-ge v0, v11, :cond_69

    iget-object v6, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lr/d;

    invoke-virtual {v6, v9, v10}, Lr/d;->Q(Lp/c;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_69
    const/16 v16, 0x0

    :goto_4c
    const/16 v0, 0x8

    if-eqz v23, :cond_6c

    if-ge v14, v0, :cond_6c

    const/16 v19, 0x2

    aget-boolean v6, v27, v19

    if-eqz v6, :cond_6c

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4d
    if-ge v6, v11, :cond_6a

    iget-object v8, v1, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr/d;

    iget v0, v8, Lr/d;->Y:I

    invoke-virtual {v8}, Lr/d;->q()I

    move-result v28

    add-int v0, v28, v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v0, v8, Lr/d;->Z:I

    invoke-virtual {v8}, Lr/d;->k()I

    move-result v8

    add-int/2addr v8, v0

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x8

    const/4 v8, -0x1

    goto :goto_4d

    :cond_6a
    iget v0, v1, Lr/d;->b0:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v1, Lr/d;->c0:I

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v8, 0x2

    if-ne v2, v8, :cond_6b

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v12

    if-ge v12, v0, :cond_6b

    invoke-virtual {v1, v0}, Lr/d;->O(I)V

    const/16 v17, 0x0

    aput v8, v22, v17

    const/16 v16, 0x1

    const/16 v24, 0x1

    :cond_6b
    if-ne v4, v8, :cond_6c

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v0

    if-ge v0, v6, :cond_6c

    invoke-virtual {v1, v6}, Lr/d;->L(I)V

    const/16 v18, 0x1

    aput v8, v22, v18

    const/16 v16, 0x1

    const/16 v24, 0x1

    :cond_6c
    iget v0, v1, Lr/d;->b0:I

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v6

    if-le v0, v6, :cond_6d

    invoke-virtual {v1, v0}, Lr/d;->O(I)V

    const/4 v8, 0x1

    const/16 v17, 0x0

    aput v8, v22, v17

    move/from16 v16, v8

    move/from16 v18, v16

    goto :goto_4e

    :cond_6d
    const/4 v8, 0x1

    move/from16 v18, v24

    :goto_4e
    iget v0, v1, Lr/d;->c0:I

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v6

    if-le v0, v6, :cond_6e

    invoke-virtual {v1, v0}, Lr/d;->L(I)V

    aput v8, v22, v8

    move v0, v8

    move/from16 v16, v0

    goto :goto_4f

    :cond_6e
    move/from16 v0, v18

    :goto_4f
    if-nez v0, :cond_71

    const/16 v17, 0x0

    aget v6, v22, v17

    const/4 v12, 0x2

    if-ne v6, v12, :cond_6f

    if-lez v3, :cond_6f

    invoke-virtual {v1}, Lr/d;->q()I

    move-result v6

    if-le v6, v3, :cond_6f

    iput-boolean v8, v1, Lr/e;->E0:Z

    aput v8, v22, v17

    invoke-virtual {v1, v3}, Lr/d;->O(I)V

    move v0, v8

    move/from16 v16, v0

    :cond_6f
    aget v6, v22, v8

    const/4 v12, 0x2

    if-ne v6, v12, :cond_70

    if-lez v5, :cond_70

    invoke-virtual {v1}, Lr/d;->k()I

    move-result v6

    if-le v6, v5, :cond_70

    iput-boolean v8, v1, Lr/e;->F0:Z

    aput v8, v22, v8

    invoke-virtual {v1, v5}, Lr/d;->L(I)V

    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_50
    const/16 v8, 0x8

    goto :goto_52

    :cond_70
    :goto_51
    move/from16 v6, v16

    goto :goto_50

    :cond_71
    const/4 v12, 0x2

    goto :goto_51

    :goto_52
    if-le v14, v8, :cond_72

    const/4 v13, 0x0

    goto :goto_53

    :cond_72
    move v13, v6

    :goto_53
    move v12, v0

    move v0, v14

    move/from16 v8, v23

    const/16 v6, 0x40

    move-object/from16 v23, v15

    goto/16 :goto_3e

    :cond_73
    move/from16 v24, v12

    iput-object v7, v1, Lr/e;->q0:Ljava/util/ArrayList;

    if-eqz v24, :cond_74

    const/16 v17, 0x0

    aput v2, v22, v17

    const/16 v18, 0x1

    aput v4, v22, v18

    :cond_74
    iget-object v0, v9, Lp/c;->m:LJ/l;

    invoke-virtual {v1, v0}, Lr/e;->F(LJ/l;)V

    return-void
.end method

.method public final W(I)Z
    .locals 1

    iget v0, p0, Lr/e;->D0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final n(Ljava/lang/StringBuilder;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lr/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  actualWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lr/d;->U:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  actualHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lr/d;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lr/e;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lr/d;

    invoke-virtual {v3, p1}, Lr/d;->n(Ljava/lang/StringBuilder;)V

    const-string v3, ",\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
