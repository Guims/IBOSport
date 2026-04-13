.class public LJ/w0;
.super LJ/v0;


# instance fields
.field public n:LB/c;

.field public o:LB/c;

.field public p:LB/c;


# direct methods
.method public constructor <init>(LJ/B0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LJ/v0;-><init>(LJ/B0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, LJ/w0;->n:LB/c;

    iput-object p1, p0, LJ/w0;->o:LB/c;

    iput-object p1, p0, LJ/w0;->p:LB/c;

    return-void
.end method


# virtual methods
.method public g()LB/c;
    .locals 1

    iget-object v0, p0, LJ/w0;->o:LB/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LJ/t0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LA2/a;->t(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object v0

    iput-object v0, p0, LJ/w0;->o:LB/c;

    :cond_0
    iget-object v0, p0, LJ/w0;->o:LB/c;

    return-object v0
.end method

.method public i()LB/c;
    .locals 1

    iget-object v0, p0, LJ/w0;->n:LB/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LJ/t0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LA2/a;->x(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object v0

    iput-object v0, p0, LJ/w0;->n:LB/c;

    :cond_0
    iget-object v0, p0, LJ/w0;->n:LB/c;

    return-object v0
.end method

.method public k()LB/c;
    .locals 1

    iget-object v0, p0, LJ/w0;->p:LB/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LJ/t0;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, LA2/a;->c(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object v0

    iput-object v0, p0, LJ/w0;->p:LB/c;

    :cond_0
    iget-object v0, p0, LJ/w0;->p:LB/c;

    return-object v0
.end method

.method public l(IIII)LJ/B0;
    .locals 1

    iget-object v0, p0, LJ/t0;->c:Landroid/view/WindowInsets;

    invoke-static {v0, p1, p2, p3, p4}, LA2/a;->i(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, LJ/B0;->g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;

    move-result-object p1

    return-object p1
.end method

.method public q(LB/c;)V
    .locals 0

    return-void
.end method
