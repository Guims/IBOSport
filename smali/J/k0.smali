.class public final LJ/k0;
.super Landroid/view/WindowInsetsAnimation$Callback;


# instance fields
.field public final a:LS2/f;

.field public b:Ljava/util/List;

.field public c:Ljava/util/ArrayList;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(LS2/f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LJ/k0;->d:Ljava/util/HashMap;

    iput-object p1, p0, LJ/k0;->a:LS2/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowInsetsAnimation;)LJ/n0;
    .locals 5

    iget-object v0, p0, LJ/k0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/n0;

    if-nez v0, :cond_1

    new-instance v0, LJ/n0;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, LJ/n0;-><init>(ILandroid/view/animation/Interpolator;J)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v1, LJ/l0;

    invoke-direct {v1, p1}, LJ/l0;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v1, v0, LJ/n0;->a:LJ/m0;

    :cond_0
    iget-object v1, p0, LJ/k0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    invoke-virtual {p0, p1}, LJ/k0;->a(Landroid/view/WindowInsetsAnimation;)LJ/n0;

    iget-object v0, p0, LJ/k0;->a:LS2/f;

    iget-object v0, v0, LS2/f;->s:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, LJ/k0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    invoke-virtual {p0, p1}, LJ/k0;->a(Landroid/view/WindowInsetsAnimation;)LJ/n0;

    iget-object p1, p0, LJ/k0;->a:LS2/f;

    iget-object v0, p1, LS2/f;->s:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p1, LS2/f;->t:Ljava/lang/Object;

    check-cast v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p1, LS2/f;->b:I

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4

    iget-object v0, p0, LJ/k0;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LJ/k0;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LJ/k0;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LE3/k;->m(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimation;

    move-result-object v1

    invoke-virtual {p0, v1}, LJ/k0;->a(Landroid/view/WindowInsetsAnimation;)LJ/n0;

    move-result-object v2

    invoke-static {v1}, LE3/k;->v(Landroid/view/WindowInsetsAnimation;)F

    move-result v1

    iget-object v3, v2, LJ/n0;->a:LJ/m0;

    invoke-virtual {v3, v1}, LJ/m0;->d(F)V

    iget-object v1, p0, LJ/k0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2, p1}, LJ/B0;->g(Landroid/view/View;Landroid/view/WindowInsets;)LJ/B0;

    move-result-object p1

    iget-object p2, p0, LJ/k0;->b:Ljava/util/List;

    iget-object v0, p0, LJ/k0;->a:LS2/f;

    invoke-virtual {v0, p1, p2}, LS2/f;->c(LJ/B0;Ljava/util/List;)V

    invoke-virtual {p1}, LJ/B0;->f()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 4

    invoke-virtual {p0, p1}, LJ/k0;->a(Landroid/view/WindowInsetsAnimation;)LJ/n0;

    invoke-static {p2}, LE3/k;->z(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object p1

    invoke-static {p2}, LE3/k;->i(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p2}, LB/c;->c(Landroid/graphics/Insets;)LB/c;

    move-result-object p2

    iget-object v0, p0, LJ/k0;->a:LS2/f;

    iget-object v1, v0, LS2/f;->s:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, v0, LS2/f;->t:Ljava/lang/Object;

    check-cast v2, [I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v3, v0, LS2/f;->b:I

    sub-int/2addr v3, v2

    iput v3, v0, LS2/f;->q:I

    int-to-float v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, LE3/k;->q()V

    invoke-virtual {p1}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p2}, LB/c;->d()Landroid/graphics/Insets;

    move-result-object p2

    invoke-static {p1, p2}, LE3/k;->k(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p1

    return-object p1
.end method
