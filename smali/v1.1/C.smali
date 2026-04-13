.class public abstract Lv1/C;
.super Ljava/lang/Object;


# instance fields
.field public a:Lv1/x;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(Lv1/X;)V
    .locals 2

    iget v0, p0, Lv1/X;->j:I

    invoke-virtual {p0}, Lv1/X;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    iget-object v0, p0, Lv1/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->G(Lv1/X;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lv1/X;Lv1/X;LJ/q;LJ/q;)Z
.end method

.method public final c(Lv1/X;)V
    .locals 10

    iget-object v0, p0, Lv1/C;->a:Lv1/x;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lv1/X;->o(Z)V

    iget-object v2, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v3, p1, Lv1/X;->h:Lv1/X;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p1, Lv1/X;->i:Lv1/X;

    if-nez v3, :cond_0

    iput-object v4, p1, Lv1/X;->h:Lv1/X;

    :cond_0
    iput-object v4, p1, Lv1/X;->i:Lv1/X;

    iget v3, p1, Lv1/X;->j:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->i0()V

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView;->u:Lr0/C;

    iget-object v5, v4, Lr0/C;->c:Ljava/lang/Object;

    check-cast v5, LC5/a;

    iget-object v6, v4, Lr0/C;->b:Ljava/lang/Object;

    check-cast v6, Lv1/x;

    iget-object v7, v6, Lv1/x;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_2

    invoke-virtual {v4, v2}, Lr0/C;->q(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v7}, LC5/a;->s(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, LC5/a;->v(I)Z

    invoke-virtual {v4, v2}, Lr0/C;->q(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Lv1/x;->h(I)V

    goto :goto_0

    :cond_3
    move v1, v9

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Lv1/X;

    move-result-object v4

    invoke-virtual {v3, v4}, Lv1/M;->m(Lv1/X;)V

    invoke-virtual {v3, v4}, Lv1/M;->j(Lv1/X;)V

    :cond_4
    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->j0(Z)V

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lv1/X;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public abstract d(Lv1/X;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
