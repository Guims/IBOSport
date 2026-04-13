.class public final Lf/J;
.super Li/a;

# interfaces
.implements Lj/k;


# instance fields
.field public final r:Landroid/content/Context;

.field public final s:Lj/m;

.field public t:LY1/c;

.field public u:Ljava/lang/ref/WeakReference;

.field public final synthetic v:Lf/K;


# direct methods
.method public constructor <init>(Lf/K;Landroid/content/Context;LY1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/J;->v:Lf/K;

    iput-object p2, p0, Lf/J;->r:Landroid/content/Context;

    iput-object p3, p0, Lf/J;->t:LY1/c;

    new-instance p1, Lj/m;

    invoke-direct {p1, p2}, Lj/m;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, Lj/m;->l:I

    iput-object p1, p0, Lf/J;->s:Lj/m;

    iput-object p0, p1, Lj/m;->e:Lj/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v1, v0, Lf/K;->i:Lf/J;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lf/K;->p:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Lf/K;->j:Lf/J;

    iget-object v1, p0, Lf/J;->t:LY1/c;

    iput-object v1, v0, Lf/K;->k:LY1/c;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lf/J;->t:LY1/c;

    invoke-virtual {v1, p0}, LY1/c;->K(Li/a;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lf/J;->t:LY1/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lf/K;->U(Z)V

    iget-object v2, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v3, v2, Landroidx/appcompat/widget/ActionBarContextView;->z:Landroid/view/View;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    :cond_2
    iget-object v2, v0, Lf/K;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, v0, Lf/K;->u:Z

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Lf/K;->i:Lf/J;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lf/J;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lj/m;
    .locals 1

    iget-object v0, p0, Lf/J;->s:Lj/m;

    return-object v0
.end method

.method public final d()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Li/h;

    iget-object v1, p0, Lf/J;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Li/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->i:Lf/J;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf/J;->s:Lj/m;

    invoke-virtual {v0}, Lj/m;->w()V

    :try_start_0
    iget-object v1, p0, Lf/J;->t:LY1/c;

    invoke-virtual {v1, p0, v0}, LY1/c;->L(Li/a;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lj/m;->v()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lj/m;->v()V

    throw v1
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->H:Z

    return v0
.end method

.method public final i(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/J;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/J;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/J;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    iput-boolean p1, p0, Li/a;->q:Z

    iget-object v0, p0, Lf/J;->v:Lf/K;

    iget-object v0, v0, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final p(Lj/m;)V
    .locals 0

    iget-object p1, p0, Lf/J;->t:LY1/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/J;->g()V

    iget-object p1, p0, Lf/J;->v:Lf/K;

    iget-object p1, p1, Lf/K;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarContextView;->s:Lk/k;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lk/k;->l()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final q(Lj/m;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lf/J;->t:LY1/c;

    if-eqz p1, :cond_0

    iget-object p1, p1, LY1/c;->q:Ljava/lang/Object;

    check-cast p1, LK1/c;

    invoke-virtual {p1, p0, p2}, LK1/c;->u(Li/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
