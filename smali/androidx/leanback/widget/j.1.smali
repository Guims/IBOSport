.class public final Landroidx/leanback/widget/j;
.super Landroidx/leanback/widget/k;


# instance fields
.field public final synthetic s:Landroidx/leanback/widget/o;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/o;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/j;->s:Landroidx/leanback/widget/o;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/k;-><init>(Landroidx/leanback/widget/o;)V

    return-void
.end method


# virtual methods
.method public final f(I)Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lv1/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->C:Lv1/G;

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/leanback/widget/j;->s:Landroidx/leanback/widget/o;

    invoke-virtual {v1, v0}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lv1/G;->N(Landroid/view/View;)I

    move-result v0

    iget v2, v1, Landroidx/leanback/widget/o;->z:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_1
    if-ge p1, v0, :cond_2

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    iget v0, v1, Landroidx/leanback/widget/o;->r:I

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
