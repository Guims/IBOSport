.class public abstract Landroidx/leanback/widget/k;
.super Lv1/s;


# instance fields
.field public q:Z

.field public final synthetic r:Landroidx/leanback/widget/o;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/o;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/k;->r:Landroidx/leanback/widget/o;

    iget-object p1, p1, Landroidx/leanback/widget/o;->q:Landroidx/leanback/widget/f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lv1/s;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final e(I)I
    .locals 3

    invoke-super {p0, p1}, Lv1/s;->e(I)I

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/k;->r:Landroidx/leanback/widget/o;

    iget-object v1, v1, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v1, v1, LK1/c;->s:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/W;

    iget v1, v1, Landroidx/leanback/widget/W;->i:I

    if-lez v1, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-float p1, p1

    mul-float/2addr v2, p1

    int-to-float p1, v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    float-to-int p1, v2

    return p1

    :cond_0
    return v0
.end method

.method public final h()V
    .locals 3

    invoke-super {p0}, Lv1/s;->h()V

    iget-boolean v0, p0, Landroidx/leanback/widget/k;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/k;->l()V

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/k;->r:Landroidx/leanback/widget/o;

    iget-object v1, v0, Landroidx/leanback/widget/o;->C:Landroidx/leanback/widget/k;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    iput-object v2, v0, Landroidx/leanback/widget/o;->C:Landroidx/leanback/widget/k;

    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    if-ne v1, p0, :cond_2

    iput-object v2, v0, Landroidx/leanback/widget/o;->D:Landroidx/leanback/widget/m;

    :cond_2
    return-void
.end method

.method public final i(Landroid/view/View;Lv1/Q;)V
    .locals 6

    sget-object v0, Landroidx/leanback/widget/o;->d0:[I

    iget-object v1, p0, Landroidx/leanback/widget/k;->r:Landroidx/leanback/widget/o;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/leanback/widget/o;->b1(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v1, Landroidx/leanback/widget/o;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    aget p1, v0, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    aget p1, v0, v1

    aget v0, v0, v2

    :goto_0
    mul-int v2, p1, p1

    mul-int v3, v0, v0

    add-int/2addr v3, v2

    int-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Landroidx/leanback/widget/k;->e(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput p1, p2, Lv1/Q;->a:I

    iput v0, p2, Lv1/Q;->b:I

    iput v2, p2, Lv1/Q;->c:I

    iget-object p1, p0, Lv1/s;->j:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p2, Lv1/Q;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p2, Lv1/Q;->f:Z

    :cond_1
    return-void
.end method

.method public l()V
    .locals 4

    iget v0, p0, Lv1/s;->a:I

    iget-object v1, p0, Lv1/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    invoke-virtual {v1, v0}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/leanback/widget/k;->r:Landroidx/leanback/widget/o;

    if-nez v0, :cond_1

    iget v0, p0, Lv1/s;->a:I

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/o;->r1(IZ)V

    :cond_0
    return-void

    :cond_1
    iget v2, v1, Landroidx/leanback/widget/o;->B:I

    iget v3, p0, Lv1/s;->a:I

    if-eq v2, v3, :cond_2

    iput v3, v1, Landroidx/leanback/widget/o;->B:I

    :cond_2
    invoke-virtual {v1}, Lv1/G;->R()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v1, Landroidx/leanback/widget/o;->z:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget v0, v1, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v0, v0, -0x21

    iput v0, v1, Landroidx/leanback/widget/o;->z:I

    :cond_3
    invoke-virtual {v1}, Landroidx/leanback/widget/o;->S0()V

    invoke-virtual {v1}, Landroidx/leanback/widget/o;->T0()V

    return-void
.end method
