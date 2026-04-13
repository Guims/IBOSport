.class public LJ/q0;
.super LJ/s0;


# instance fields
.field public final c:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LJ/s0;-><init>()V

    invoke-static {}, LA2/a;->f()Landroid/view/WindowInsets$Builder;

    move-result-object v0

    iput-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(LJ/B0;)V
    .locals 0

    invoke-direct {p0, p1}, LJ/s0;-><init>(LJ/B0;)V

    invoke-virtual {p1}, LJ/B0;->f()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, LA2/a;->g(Landroid/view/WindowInsets;)Landroid/view/WindowInsets$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, LA2/a;->f()Landroid/view/WindowInsets$Builder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public b()LJ/B0;
    .locals 3

    invoke-virtual {p0}, LJ/s0;->a()V

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-static {v0}, LA2/a;->h(Landroid/view/WindowInsets$Builder;)Landroid/view/WindowInsets;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, LJ/B0;->g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;

    move-result-object v0

    iget-object v1, p0, LJ/s0;->b:[LB/c;

    iget-object v2, v0, LJ/B0;->a:LJ/y0;

    invoke-virtual {v2, v1}, LJ/y0;->o([LB/c;)V

    return-object v0
.end method

.method public d(LB/c;)V
    .locals 1

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/a;->C(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public e(LB/c;)V
    .locals 1

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/a;->v(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public f(LB/c;)V
    .locals 1

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/a;->z(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public g(LB/c;)V
    .locals 1

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/a;->l(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method

.method public h(LB/c;)V
    .locals 1

    iget-object v0, p0, LJ/q0;->c:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {v0, p1}, LA2/a;->D(Landroid/view/WindowInsets$Builder;Landroid/graphics/Insets;)V

    return-void
.end method
