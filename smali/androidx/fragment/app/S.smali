.class public final Landroidx/fragment/app/S;
.super Ljava/lang/Object;


# instance fields
.field public final a:LY1/c;

.field public final b:LK1/c;

.field public final c:Landroidx/fragment/app/t;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(LY1/c;LK1/c;Landroidx/fragment/app/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/S;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/S;->e:I

    iput-object p1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    iput-object p2, p0, Landroidx/fragment/app/S;->b:LK1/c;

    iput-object p3, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    return-void
.end method

.method public constructor <init>(LY1/c;LK1/c;Landroidx/fragment/app/t;Landroidx/fragment/app/P;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/S;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/fragment/app/S;->e:I

    iput-object p1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    iput-object p2, p0, Landroidx/fragment/app/S;->b:LK1/c;

    iput-object p3, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    const/4 p1, 0x0

    iput-object p1, p3, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    iput-object p1, p3, Landroidx/fragment/app/t;->s:Landroid/os/Bundle;

    iput v0, p3, Landroidx/fragment/app/t;->F:I

    iput-boolean v0, p3, Landroidx/fragment/app/t;->C:Z

    iput-boolean v0, p3, Landroidx/fragment/app/t;->z:Z

    iget-object p2, p3, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    iput-object p1, p3, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    iget-object p1, p4, Landroidx/fragment/app/P;->B:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    iput-object p1, p3, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    return-void

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p3, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(LY1/c;LK1/c;Ljava/lang/ClassLoader;Landroidx/fragment/app/D;Landroidx/fragment/app/P;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/S;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/S;->e:I

    iput-object p1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    iput-object p2, p0, Landroidx/fragment/app/S;->b:LK1/c;

    iget-object p1, p5, Landroidx/fragment/app/P;->b:Ljava/lang/String;

    invoke-virtual {p4, p1}, Landroidx/fragment/app/D;->a(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object p1

    iget-object p2, p5, Landroidx/fragment/app/P;->y:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/t;->N(Landroid/os/Bundle;)V

    iget-object p2, p5, Landroidx/fragment/app/P;->q:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iget-boolean p2, p5, Landroidx/fragment/app/P;->r:Z

    iput-boolean p2, p1, Landroidx/fragment/app/t;->B:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/t;->D:Z

    iget p2, p5, Landroidx/fragment/app/P;->s:I

    iput p2, p1, Landroidx/fragment/app/t;->K:I

    iget p2, p5, Landroidx/fragment/app/P;->t:I

    iput p2, p1, Landroidx/fragment/app/t;->L:I

    iget-object p2, p5, Landroidx/fragment/app/P;->u:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/t;->M:Ljava/lang/String;

    iget-boolean p2, p5, Landroidx/fragment/app/P;->v:Z

    iput-boolean p2, p1, Landroidx/fragment/app/t;->P:Z

    iget-boolean p2, p5, Landroidx/fragment/app/P;->w:Z

    iput-boolean p2, p1, Landroidx/fragment/app/t;->A:Z

    iget-boolean p2, p5, Landroidx/fragment/app/P;->x:Z

    iput-boolean p2, p1, Landroidx/fragment/app/t;->O:Z

    iget-boolean p2, p5, Landroidx/fragment/app/P;->z:Z

    iput-boolean p2, p1, Landroidx/fragment/app/t;->N:Z

    invoke-static {}, Landroidx/lifecycle/m;->values()[Landroidx/lifecycle/m;

    move-result-object p2

    iget p3, p5, Landroidx/fragment/app/P;->A:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/t;->a0:Landroidx/lifecycle/m;

    iget-object p2, p5, Landroidx/fragment/app/P;->B:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    iput-object p2, p1, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    const/4 p2, 0x2

    invoke-static {p2}, Landroidx/fragment/app/K;->G(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v3, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    iget-object v1, v3, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v1}, Landroidx/fragment/app/K;->N()V

    iput v0, v3, Landroidx/fragment/app/t;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v3, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v3}, Landroidx/fragment/app/t;->s()V

    iget-boolean v4, v3, Landroidx/fragment/app/t;->R:Z

    const-string v5, "Fragment "

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v3, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v4, v3, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    iget-object v6, v3, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, v3, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, v3, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v3, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    iget-object v6, v3, Landroidx/fragment/app/t;->s:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/fragment/app/U;->s:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0, v6}, Lcom/bumptech/glide/manager/r;->i(Landroid/os/Bundle;)V

    iput-object v2, v3, Landroidx/fragment/app/t;->s:Landroid/os/Bundle;

    :cond_3
    iput-boolean v1, v3, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v3, v4}, Landroidx/fragment/app/t;->G(Landroid/os/Bundle;)V

    iget-boolean v0, v3, Landroidx/fragment/app/t;->R:Z

    if-eqz v0, :cond_4

    iget-object v0, v3, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v3, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    sget-object v4, Landroidx/lifecycle/l;->ON_CREATE:Landroidx/lifecycle/l;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/U;->c(Landroidx/lifecycle/l;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    iput-object v2, v3, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    iget-object v0, v3, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iput-boolean v1, v0, Landroidx/fragment/app/K;->F:Z

    iput-boolean v1, v0, Landroidx/fragment/app/K;->G:Z

    iget-object v2, v0, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v1, v2, Landroidx/fragment/app/M;->h:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v0, v1}, LY1/c;->n(Z)V

    return-void

    :cond_6
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Landroidx/fragment/app/S;->b:LK1/c;

    iget-object v0, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v2, v1, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/t;

    iget-object v7, v6, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-ne v7, v2, :cond_1

    iget-object v6, v6, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v6, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/t;

    iget-object v6, v5, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_3

    iget-object v5, v5, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, v1, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    iget-object v1, v1, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto ATTACHED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    const/4 v2, 0x0

    const-string v3, " that does not belong to this FragmentManager!"

    const-string v4, " declared target fragment "

    iget-object v5, p0, Landroidx/fragment/app/S;->b:LK1/c;

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iget-object v5, v5, LK1/c;->r:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/S;

    if-eqz v0, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    iget-object v3, v3, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iput-object v3, v1, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    move-object v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, v5, LK1/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/S;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    invoke-static {v2, v1, v3}, LB/f;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/fragment/app/S;->k()V

    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    iget-object v2, v0, Landroidx/fragment/app/K;->u:Landroidx/fragment/app/v;

    iput-object v2, v1, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    iget-object v0, v0, Landroidx/fragment/app/K;->w:Landroidx/fragment/app/t;

    iput-object v0, v1, Landroidx/fragment/app/t;->J:Landroidx/fragment/app/t;

    iget-object v0, p0, Landroidx/fragment/app/S;->a:LY1/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LY1/c;->t(Z)V

    iget-object v3, v1, Landroidx/fragment/app/t;->g0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Landroidx/fragment/app/s;

    invoke-virtual {v7}, Landroidx/fragment/app/s;->a()V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iget-object v4, v1, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    invoke-virtual {v1}, Landroidx/fragment/app/t;->c()LC2/b;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroidx/fragment/app/K;->b(Landroidx/fragment/app/v;LC2/b;Landroidx/fragment/app/t;)V

    iput v2, v1, Landroidx/fragment/app/t;->b:I

    iput-boolean v2, v1, Landroidx/fragment/app/t;->R:Z

    iget-object v3, v1, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    iget-object v3, v3, Landroidx/fragment/app/v;->s:Lf/i;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/t;->u(Landroid/content/Context;)V

    iget-boolean v3, v1, Landroidx/fragment/app/t;->R:Z

    if-eqz v3, :cond_8

    iget-object v3, v1, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    iget-object v3, v3, Landroidx/fragment/app/K;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/N;

    invoke-interface {v4}, Landroidx/fragment/app/N;->a()V

    goto :goto_2

    :cond_7
    iget-object v1, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iput-boolean v2, v1, Landroidx/fragment/app/K;->F:Z

    iput-boolean v2, v1, Landroidx/fragment/app/K;->G:Z

    iget-object v3, v1, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v2, v3, Landroidx/fragment/app/M;->h:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/K;->t(I)V

    invoke-virtual {v0, v2}, LY1/c;->o(Z)V

    return-void

    :cond_8
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttach()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .locals 14

    iget-object v0, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v1, v0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    if-nez v1, :cond_0

    iget v0, v0, Landroidx/fragment/app/t;->b:I

    return v0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/S;->e:I

    iget-object v2, v0, Landroidx/fragment/app/t;->a0:Landroidx/lifecycle/m;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v7, :cond_4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Landroidx/fragment/app/t;->B:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Landroidx/fragment/app/t;->C:Z

    if-eqz v2, :cond_5

    iget v1, p0, Landroidx/fragment/app/S;->e:I

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v2, p0, Landroidx/fragment/app/S;->e:I

    if-ge v2, v7, :cond_6

    iget v2, v0, Landroidx/fragment/app/t;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean v2, v0, Landroidx/fragment/app/t;->z:Z

    if-nez v2, :cond_8

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v2, v0, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/K;->E()Lx2/f;

    move-result-object v10

    invoke-static {v2, v10}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Lx2/f;)Landroidx/fragment/app/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/i;->d(Landroidx/fragment/app/t;)Landroidx/fragment/app/X;

    move-result-object v10

    if-eqz v10, :cond_9

    iget v10, v10, Landroidx/fragment/app/X;->b:I

    goto :goto_2

    :cond_9
    move v10, v3

    :goto_2
    iget-object v2, v2, Landroidx/fragment/app/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    :cond_a
    if-ge v3, v11, :cond_b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v3, v3, 0x1

    check-cast v12, Landroidx/fragment/app/X;

    iget-object v13, v12, Landroidx/fragment/app/X;->c:Landroidx/fragment/app/t;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-boolean v13, v12, Landroidx/fragment/app/X;->f:Z

    if-nez v13, :cond_a

    goto :goto_3

    :cond_b
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_d

    if-eqz v10, :cond_c

    if-ne v10, v9, :cond_d

    :cond_c
    iget v2, v12, Landroidx/fragment/app/X;->b:I

    move v3, v2

    goto :goto_4

    :cond_d
    move v3, v10

    :cond_e
    :goto_4
    if-ne v3, v8, :cond_f

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_f
    if-ne v3, v6, :cond_10

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_10
    iget-boolean v2, v0, Landroidx/fragment/app/t;->A:Z

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Landroidx/fragment/app/t;->r()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_11
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    :goto_5
    iget-boolean v2, v0, Landroidx/fragment/app/t;->U:Z

    if-eqz v2, :cond_13

    iget v2, v0, Landroidx/fragment/app/t;->b:I

    if-ge v2, v4, :cond_13

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_13
    invoke-static {v8}, Landroidx/fragment/app/K;->G(I)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return v1
.end method

.method public final e()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/t;->Y:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/S;->a:LY1/c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LY1/c;->u(Z)V

    iget-object v4, v1, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    iget-object v5, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v5}, Landroidx/fragment/app/K;->N()V

    iput v2, v1, Landroidx/fragment/app/t;->b:I

    iput-boolean v3, v1, Landroidx/fragment/app/t;->R:Z

    iget-object v5, v1, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    new-instance v6, Landroidx/fragment/app/Fragment$6;

    invoke-direct {v6, v1}, Landroidx/fragment/app/Fragment$6;-><init>(Landroidx/fragment/app/t;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/t;->a(Landroidx/lifecycle/q;)V

    iget-object v5, v1, Landroidx/fragment/app/t;->e0:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/manager/r;->i(Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/t;->v(Landroid/os/Bundle;)V

    iput-boolean v2, v1, Landroidx/fragment/app/t;->Y:Z

    iget-boolean v2, v1, Landroidx/fragment/app/t;->R:Z

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    sget-object v2, Landroidx/lifecycle/l;->ON_CREATE:Landroidx/lifecycle/l;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    invoke-virtual {v0, v3}, LY1/c;->p(Z)V

    return-void

    :cond_1
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/t;->L(Landroid/os/Bundle;)V

    iput v2, v1, Landroidx/fragment/app/t;->b:I

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-boolean v1, v0, Landroidx/fragment/app/t;->B:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/t;->A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, v0, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v3, v0, Landroidx/fragment/app/t;->L:I

    if-eqz v3, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    iget-object v4, v0, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    iget-object v4, v4, Landroidx/fragment/app/K;->v:LC2/b;

    invoke-virtual {v4, v3}, LC2/b;->D(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    iget-boolean v4, v0, Landroidx/fragment/app/t;->D:Z

    if-eqz v4, :cond_3

    goto/16 :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/t;->m()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroidx/fragment/app/t;->L:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "unknown"

    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No view found for id 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroidx/fragment/app/t;->L:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    instance-of v4, v3, Landroidx/fragment/app/FragmentContainerView;

    if-nez v4, :cond_7

    sget-object v4, Lc0/c;->a:Lc0/b;

    new-instance v4, Lc0/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Attempting to add fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " which is not a FragmentContainerView"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lc0/a;-><init>(Landroidx/fragment/app/t;Ljava/lang/String;)V

    invoke-static {v4}, Lc0/c;->b(Lc0/a;)V

    invoke-static {v0}, Lc0/c;->a(Landroidx/fragment/app/t;)Lc0/b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for a container view with no id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    iput-object v3, v0, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v4}, Landroidx/fragment/app/t;->H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const/4 v4, 0x2

    if-eqz v1, :cond_c

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const v6, 0x7f0b017b

    invoke-virtual {v1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/S;->b()V

    :cond_8
    iget-boolean v1, v0, Landroidx/fragment/app/t;->N:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    sget-object v3, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-static {v1}, LJ/F;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    new-instance v3, Landroidx/fragment/app/Q;

    invoke-direct {v3, v5, v1}, Landroidx/fragment/app/Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    iget-object v1, v0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v1, v4}, Landroidx/fragment/app/K;->t(I)V

    iget-object v1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v1, v5}, LY1/c;->z(Z)V

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v3, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v0}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object v5

    iput v3, v5, Landroidx/fragment/app/r;->j:F

    iget-object v3, v0, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object v3

    iput-object v1, v3, Landroidx/fragment/app/r;->k:Landroid/view/View;

    invoke-static {v4}, Landroidx/fragment/app/K;->G(I)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "requestFocus: Saved focused view "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    iput v4, v0, Landroidx/fragment/app/t;->b:I

    return-void
.end method

.method public final g()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, Landroidx/fragment/app/t;->A:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/t;->r()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/S;->b:LK1/c;

    if-eqz v0, :cond_2

    iget-object v5, v1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iget-object v6, v4, LK1/c;->s:Ljava/lang/Object;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/P;

    :cond_2
    if-nez v0, :cond_7

    iget-object v5, v4, LK1/c;->t:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/M;

    iget-object v6, v5, Landroidx/fragment/app/M;->c:Ljava/util/HashMap;

    iget-object v7, v1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v6, v5, Landroidx/fragment/app/M;->f:Z

    if-eqz v6, :cond_4

    iget-boolean v5, v5, Landroidx/fragment/app/M;->g:Z

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v1, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v4, v0}, LK1/c;->k(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v2, v0, Landroidx/fragment/app/t;->P:Z

    if-eqz v2, :cond_6

    iput-object v0, v1, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    :cond_6
    iput v3, v1, Landroidx/fragment/app/t;->b:I

    return-void

    :cond_7
    :goto_3
    iget-object v5, v1, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    if-eqz v5, :cond_8

    iget-object v2, v4, LK1/c;->t:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/M;

    iget-boolean v2, v2, Landroidx/fragment/app/M;->g:Z

    goto :goto_4

    :cond_8
    iget-object v5, v5, Landroidx/fragment/app/v;->s:Lf/i;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v5

    xor-int/2addr v2, v5

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_b

    :goto_5
    iget-object v0, v4, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/M;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/M;->b(Landroidx/fragment/app/t;)V

    :cond_b
    iget-object v0, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->k()V

    iget-object v0, v1, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    sget-object v2, Landroidx/lifecycle/l;->ON_DESTROY:Landroidx/lifecycle/l;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    iput v3, v1, Landroidx/fragment/app/t;->b:I

    iput-boolean v3, v1, Landroidx/fragment/app/t;->R:Z

    iput-boolean v3, v1, Landroidx/fragment/app/t;->Y:Z

    invoke-virtual {v1}, Landroidx/fragment/app/t;->x()V

    iget-boolean v0, v1, Landroidx/fragment/app/t;->R:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v0, v3}, LY1/c;->q(Z)V

    invoke-virtual {v4}, LK1/c;->p()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_c
    :goto_6
    if-ge v3, v2, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Landroidx/fragment/app/S;

    if-eqz v5, :cond_c

    iget-object v5, v5, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v6, v1, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    iget-object v7, v5, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iput-object v1, v5, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    goto :goto_6

    :cond_d
    iget-object v0, v1, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v4, v0}, LK1/c;->k(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v0

    iput-object v0, v1, Landroidx/fragment/app/t;->v:Landroidx/fragment/app/t;

    :cond_e
    invoke-virtual {v4, p0}, LK1/c;->t(Landroidx/fragment/app/S;)V

    return-void

    :cond_f
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroy()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "movefrom CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/K;->t(I)V

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    invoke-virtual {v1}, Landroidx/fragment/app/U;->e()V

    iget-object v1, v1, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    iget-object v1, v1, Landroidx/lifecycle/t;->c:Landroidx/lifecycle/m;

    sget-object v3, Landroidx/lifecycle/m;->r:Landroidx/lifecycle/m;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, v0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    sget-object v3, Landroidx/lifecycle/l;->ON_DESTROY:Landroidx/lifecycle/l;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/U;->c(Landroidx/lifecycle/l;)V

    :cond_2
    iput v2, v0, Landroidx/fragment/app/t;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v0}, Landroidx/fragment/app/t;->y()V

    iget-boolean v3, v0, Landroidx/fragment/app/t;->R:Z

    if-eqz v3, :cond_4

    invoke-static {v0}, LY1/c;->G(Landroidx/lifecycle/r;)LY1/c;

    move-result-object v3

    iget-object v3, v3, LY1/c;->r:Ljava/lang/Object;

    check-cast v3, Lh0/a;

    iget-object v3, v3, Lh0/a;->c:Ln/k;

    iget v4, v3, Ln/k;->r:I

    if-gtz v4, :cond_3

    iput-boolean v1, v0, Landroidx/fragment/app/t;->E:Z

    iget-object v3, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v3, v1}, LY1/c;->A(Z)V

    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    iput-object v3, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    iput-object v3, v0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    iget-object v4, v0, Landroidx/fragment/app/t;->d0:Landroidx/lifecycle/x;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "setValue"

    invoke-static {v5}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)V

    iget v5, v4, Landroidx/lifecycle/x;->g:I

    add-int/2addr v5, v2

    iput v5, v4, Landroidx/lifecycle/x;->g:I

    iput-object v3, v4, Landroidx/lifecycle/x;->e:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/x;->c(Landroidx/lifecycle/w;)V

    iput-boolean v1, v0, Landroidx/fragment/app/t;->C:Z

    return-void

    :cond_3
    iget-object v0, v3, Ln/k;->q:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-static {v0}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_4
    new-instance v1, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " did not call through to super.onDestroyView()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final i()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    iput v1, v3, Landroidx/fragment/app/t;->b:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v3}, Landroidx/fragment/app/t;->z()V

    iget-boolean v5, v3, Landroidx/fragment/app/t;->R:Z

    if-eqz v5, :cond_7

    iget-object v5, v3, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iget-boolean v6, v5, Landroidx/fragment/app/K;->H:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroidx/fragment/app/K;->k()V

    new-instance v5, Landroidx/fragment/app/K;

    invoke-direct {v5}, Landroidx/fragment/app/K;-><init>()V

    iput-object v5, v3, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    :cond_1
    iget-object v5, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v5, v4}, LY1/c;->r(Z)V

    iput v1, v3, Landroidx/fragment/app/t;->b:I

    const/4 v1, 0x0

    iput-object v1, v3, Landroidx/fragment/app/t;->H:Landroidx/fragment/app/v;

    iput-object v1, v3, Landroidx/fragment/app/t;->J:Landroidx/fragment/app/t;

    iput-object v1, v3, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    iget-boolean v1, v3, Landroidx/fragment/app/t;->A:Z

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/t;->r()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/S;->b:LK1/c;

    iget-object v1, v1, LK1/c;->t:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/M;

    iget-object v4, v1, Landroidx/fragment/app/M;->c:Ljava/util/HashMap;

    iget-object v5, v3, Landroidx/fragment/app/t;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v4, v1, Landroidx/fragment/app/M;->f:Z

    if-eqz v4, :cond_4

    iget-boolean v1, v1, Landroidx/fragment/app/M;->g:Z

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    :goto_2
    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/t;->o()V

    :cond_6
    return-void

    :cond_7
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-boolean v1, v0, Landroidx/fragment/app/t;->B:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/t;->C:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/t;->E:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    invoke-static {v1}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto CREATE_VIEW: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/t;->A(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/t;->H(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const v3, 0x7f0b017b

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Landroidx/fragment/app/t;->N:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/fragment/app/K;->t(I)V

    iget-object v1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v1, v2}, LY1/c;->z(Z)V

    iput v3, v0, Landroidx/fragment/app/t;->b:I

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 10

    iget-object v0, p0, Landroidx/fragment/app/S;->b:LK1/c;

    iget-boolean v1, p0, Landroidx/fragment/app/S;->d:Z

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    iget-object v4, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v1, :cond_1

    invoke-static {v2}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v5, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/S;->d:Z

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/S;->d()I

    move-result v7

    iget v8, v4, Landroidx/fragment/app/t;->b:I

    const/4 v9, 0x3

    if-eq v7, v8, :cond_9

    if-le v7, v8, :cond_4

    add-int/lit8 v8, v8, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/S;->n()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_1
    const/4 v6, 0x6

    iput v6, v4, Landroidx/fragment/app/t;->b:I

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/S;->p()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v6, v4, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/K;->E()Lx2/f;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Lx2/f;)Landroidx/fragment/app/i;

    move-result-object v6

    iget-object v7, v4, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-static {v7}, LB/f;->b(I)I

    move-result v7

    invoke-static {v2}, Landroidx/fragment/app/K;->G(I)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v6, v7, v2, p0}, Landroidx/fragment/app/i;->a(IILandroidx/fragment/app/S;)V

    :cond_3
    const/4 v6, 0x4

    iput v6, v4, Landroidx/fragment/app/t;->b:I

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/S;->a()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/S;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/S;->f()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/S;->e()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/S;->c()V

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v8, v8, -0x1

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/S;->l()V

    goto/16 :goto_1

    :pswitch_9
    const/4 v6, 0x5

    iput v6, v4, Landroidx/fragment/app/t;->b:I

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/S;->q()V

    goto :goto_1

    :pswitch_b
    invoke-static {v9}, Landroidx/fragment/app/K;->G(I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, v4, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v6, :cond_6

    iget-object v6, v4, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    if-nez v6, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/S;->o()V

    :cond_6
    iget-object v6, v4, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v6, :cond_8

    iget-object v6, v4, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/K;->E()Lx2/f;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Lx2/f;)Landroidx/fragment/app/i;

    move-result-object v6

    invoke-static {v2}, Landroidx/fragment/app/K;->G(I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v6, v1, v9, p0}, Landroidx/fragment/app/i;->a(IILandroidx/fragment/app/S;)V

    :cond_8
    iput v9, v4, Landroidx/fragment/app/t;->b:I

    goto :goto_1

    :pswitch_c
    iput-boolean v5, v4, Landroidx/fragment/app/t;->C:Z

    iput v2, v4, Landroidx/fragment/app/t;->b:I

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/S;->h()V

    iput v1, v4, Landroidx/fragment/app/t;->b:I

    goto :goto_1

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/S;->g()V

    goto :goto_1

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/S;->i()V

    :goto_1
    move v6, v1

    goto/16 :goto_0

    :cond_9
    if-nez v6, :cond_c

    const/4 v6, -0x1

    if-ne v8, v6, :cond_c

    iget-boolean v6, v4, Landroidx/fragment/app/t;->A:Z

    if-eqz v6, :cond_c

    invoke-virtual {v4}, Landroidx/fragment/app/t;->r()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v9}, Landroidx/fragment/app/K;->G(I)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up state of never attached fragment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v6, Landroidx/fragment/app/M;

    invoke-virtual {v6, v4}, Landroidx/fragment/app/M;->b(Landroidx/fragment/app/t;)V

    invoke-virtual {v0, p0}, LK1/c;->t(Landroidx/fragment/app/S;)V

    invoke-static {v9}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initState called for fragment: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v4}, Landroidx/fragment/app/t;->o()V

    :cond_c
    iget-boolean v0, v4, Landroidx/fragment/app/t;->X:Z

    if-eqz v0, :cond_12

    iget-object v0, v4, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, v4, Landroidx/fragment/app/t;->S:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-virtual {v4}, Landroidx/fragment/app/t;->l()Landroidx/fragment/app/K;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/K;->E()Lx2/f;

    move-result-object v6

    invoke-static {v0, v6}, Landroidx/fragment/app/i;->f(Landroid/view/ViewGroup;Lx2/f;)Landroidx/fragment/app/i;

    move-result-object v0

    iget-boolean v6, v4, Landroidx/fragment/app/t;->N:Z

    if-eqz v6, :cond_e

    invoke-static {v2}, Landroidx/fragment/app/K;->G(I)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v0, v9, v1, p0}, Landroidx/fragment/app/i;->a(IILandroidx/fragment/app/S;)V

    goto :goto_2

    :cond_e
    invoke-static {v2}, Landroidx/fragment/app/K;->G(I)Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {v0, v2, v1, p0}, Landroidx/fragment/app/i;->a(IILandroidx/fragment/app/S;)V

    :cond_10
    :goto_2
    iget-object v0, v4, Landroidx/fragment/app/t;->G:Landroidx/fragment/app/K;

    if-eqz v0, :cond_11

    iget-boolean v2, v4, Landroidx/fragment/app/t;->z:Z

    if-eqz v2, :cond_11

    invoke-static {v4}, Landroidx/fragment/app/K;->H(Landroidx/fragment/app/t;)Z

    move-result v2

    if-eqz v2, :cond_11

    iput-boolean v1, v0, Landroidx/fragment/app/K;->E:Z

    :cond_11
    iput-boolean v5, v4, Landroidx/fragment/app/t;->X:Z

    iget-object v0, v4, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_12
    iput-boolean v5, p0, Landroidx/fragment/app/S;->d:Z

    return-void

    :goto_3
    iput-boolean v5, p0, Landroidx/fragment/app/S;->d:Z

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->t(I)V

    iget-object v0, v1, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    sget-object v2, Landroidx/lifecycle/l;->ON_PAUSE:Landroidx/lifecycle/l;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/U;->c(Landroidx/lifecycle/l;)V

    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    sget-object v2, Landroidx/lifecycle/l;->ON_PAUSE:Landroidx/lifecycle/l;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    const/4 v0, 0x6

    iput v0, v1, Landroidx/fragment/app/t;->b:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v1}, Landroidx/fragment/app/t;->B()V

    iget-boolean v2, v1, Landroidx/fragment/app/t;->R:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v1, v0}, LY1/c;->s(Z)V

    return-void

    :cond_2
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onPause()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    iget-object p1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/t;->s:Landroid/os/Bundle;

    iget-object p1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/fragment/app/t;->w:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroidx/fragment/app/t;->x:I

    :cond_1
    iget-object p1, v0, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/fragment/app/t;->V:Z

    if-nez p1, :cond_2

    iput-boolean v2, v0, Landroidx/fragment/app/t;->U:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Landroidx/fragment/app/t;->W:Landroidx/fragment/app/r;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/r;->k:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, v2, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    iget-object v5, v2, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/K;->G(I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v0, "succeeded"

    goto :goto_3

    :cond_3
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Landroidx/fragment/app/t;->f()Landroidx/fragment/app/r;

    move-result-object v0

    iput-object v3, v0, Landroidx/fragment/app/r;->k:Landroid/view/View;

    iget-object v0, v2, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->N()V

    iget-object v0, v2, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/K;->y(Z)Z

    const/4 v0, 0x7

    iput v0, v2, Landroidx/fragment/app/t;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v2, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v2}, Landroidx/fragment/app/t;->C()V

    iget-boolean v4, v2, Landroidx/fragment/app/t;->R:Z

    if-eqz v4, :cond_7

    iget-object v4, v2, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    sget-object v5, Landroidx/lifecycle/l;->ON_RESUME:Landroidx/lifecycle/l;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    iget-object v4, v2, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, v2, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    iget-object v4, v4, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    :cond_6
    iget-object v4, v2, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iput-boolean v1, v4, Landroidx/fragment/app/K;->F:Z

    iput-boolean v1, v4, Landroidx/fragment/app/K;->G:Z

    iget-object v5, v4, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v1, v5, Landroidx/fragment/app/M;->h:Z

    invoke-virtual {v4, v0}, Landroidx/fragment/app/K;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v0, v1}, LY1/c;->v(Z)V

    iput-object v3, v2, Landroidx/fragment/app/t;->q:Landroid/os/Bundle;

    iput-object v3, v2, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    iput-object v3, v2, Landroidx/fragment/app/t;->s:Landroid/os/Bundle;

    return-void

    :cond_7
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    iget-object v1, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/fragment/app/K;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saving view state for fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    iput-object v1, v0, Landroidx/fragment/app/t;->r:Landroid/util/SparseArray;

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    iget-object v2, v2, Landroidx/fragment/app/U;->s:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/manager/r;->j(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, v0, Landroidx/fragment/app/t;->s:Landroid/os/Bundle;

    :cond_3
    :goto_0
    return-void
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    invoke-virtual {v0}, Landroidx/fragment/app/K;->N()V

    iget-object v0, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->y(Z)Z

    const/4 v0, 0x5

    iput v0, v1, Landroidx/fragment/app/t;->b:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v1}, Landroidx/fragment/app/t;->E()V

    iget-boolean v3, v1, Landroidx/fragment/app/t;->R:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    sget-object v4, Landroidx/lifecycle/l;->ON_START:Landroidx/lifecycle/l;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    iget-object v3, v1, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    iget-object v3, v3, Landroidx/fragment/app/U;->r:Landroidx/lifecycle/t;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    :cond_1
    iget-object v1, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    iput-boolean v2, v1, Landroidx/fragment/app/K;->F:Z

    iput-boolean v2, v1, Landroidx/fragment/app/K;->G:Z

    iget-object v3, v1, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v2, v3, Landroidx/fragment/app/M;->h:Z

    invoke-virtual {v1, v0}, Landroidx/fragment/app/K;->t(I)V

    iget-object v0, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v0, v2}, LY1/c;->x(Z)V

    return-void

    :cond_2
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/K;->G(I)Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/S;->c:Landroidx/fragment/app/t;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "movefrom STARTED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v1, Landroidx/fragment/app/t;->I:Landroidx/fragment/app/K;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/fragment/app/K;->G:Z

    iget-object v3, v0, Landroidx/fragment/app/K;->M:Landroidx/fragment/app/M;

    iput-boolean v2, v3, Landroidx/fragment/app/M;->h:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->t(I)V

    iget-object v0, v1, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/fragment/app/t;->c0:Landroidx/fragment/app/U;

    sget-object v3, Landroidx/lifecycle/l;->ON_STOP:Landroidx/lifecycle/l;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/U;->c(Landroidx/lifecycle/l;)V

    :cond_1
    iget-object v0, v1, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    sget-object v3, Landroidx/lifecycle/l;->ON_STOP:Landroidx/lifecycle/l;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    iput v2, v1, Landroidx/fragment/app/t;->b:I

    const/4 v0, 0x0

    iput-boolean v0, v1, Landroidx/fragment/app/t;->R:Z

    invoke-virtual {v1}, Landroidx/fragment/app/t;->F()V

    iget-boolean v2, v1, Landroidx/fragment/app/t;->R:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/S;->a:LY1/c;

    invoke-virtual {v1, v0}, LY1/c;->y(Z)V

    return-void

    :cond_2
    new-instance v0, Landroidx/fragment/app/Y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
