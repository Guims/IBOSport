.class public final Landroidx/leanback/widget/m;
.super Landroidx/leanback/widget/k;


# instance fields
.field public final s:Z

.field public t:I

.field public final synthetic u:Landroidx/leanback/widget/o;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/o;IZ)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/m;->u:Landroidx/leanback/widget/o;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/k;-><init>(Landroidx/leanback/widget/o;)V

    iput p2, p0, Landroidx/leanback/widget/m;->t:I

    iput-boolean p3, p0, Landroidx/leanback/widget/m;->s:Z

    const/4 p1, -0x2

    iput p1, p0, Lv1/s;->a:I

    return-void
.end method


# virtual methods
.method public final f(I)Landroid/graphics/PointF;
    .locals 3

    iget p1, p0, Landroidx/leanback/widget/m;->t:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/m;->u:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iget v0, v0, Landroidx/leanback/widget/o;->r:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final k(Lv1/Q;)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/m;->t:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lv1/s;->k(Lv1/Q;)V

    return-void
.end method

.method public final l()V
    .locals 4

    invoke-super {p0}, Landroidx/leanback/widget/k;->l()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/leanback/widget/m;->t:I

    iget v0, p0, Lv1/s;->a:I

    iget-object v1, p0, Lv1/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    invoke-virtual {v1, v0}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/leanback/widget/m;->u:Landroidx/leanback/widget/o;

    invoke-virtual {v3, v0, v2, v1}, Landroidx/leanback/widget/o;->s1(Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
