.class public final Li/e;
.super Landroid/view/ActionMode;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Li/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Li/e;->a:Landroid/content/Context;

    iput-object p2, p0, Li/e;->b:Li/a;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->a()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Lj/B;

    iget-object v1, p0, Li/e;->b:Li/a;

    invoke-virtual {v1}, Li/a;->c()Lj/m;

    move-result-object v1

    iget-object v2, p0, Li/e;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lj/B;-><init>(Landroid/content/Context;Lj/m;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    iget-object v0, v0, Li/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    iget-boolean v0, v0, Li/a;->q:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->g()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0}, Li/a;->h()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0, p1}, Li/a;->i(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0, p1}, Li/a;->j(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0, p1}, Li/a;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    iput-object p1, v0, Li/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0, p1}, Li/a;->l(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0, p1}, Li/a;->m(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Li/e;->b:Li/a;

    invoke-virtual {v0, p1}, Li/a;->n(Z)V

    return-void
.end method
