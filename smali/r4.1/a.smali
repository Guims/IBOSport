.class public final Lr4/a;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field public A:Z

.field public B:Landroid/graphics/drawable/Drawable;

.field public C:Z

.field public final D:Landroid/graphics/Paint;

.field public b:F

.field public q:Lr4/b;

.field public r:Lr4/d;

.field public s:Landroid/graphics/Bitmap;

.field public final t:Landroid/view/View;

.field public final u:I

.field public final v:Landroid/view/ViewGroup;

.field public final w:[I

.field public final x:[I

.field public y:F

.field public final z:La2/d;


# direct methods
.method public constructor <init>(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lr4/a;->b:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lr4/a;->w:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lr4/a;->x:[I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lr4/a;->y:F

    new-instance v1, La2/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, La2/d;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lr4/a;->z:La2/d;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lr4/a;->D:Landroid/graphics/Paint;

    iput-object p3, p0, Lr4/a;->v:Landroid/view/ViewGroup;

    iput-object p2, p0, Lr4/a;->t:Landroid/view/View;

    iput p1, p0, Lr4/a;->u:I

    new-instance p1, Lx2/f;

    const/16 p3, 0x1b

    invoke-direct {p1, p3}, Lx2/f;-><init>(I)V

    iput-object p1, p0, Lr4/a;->q:Lr4/b;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lr4/a;->a(II)V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    int-to-float p2, p2

    const/high16 v0, 0x41000000    # 8.0f

    div-float v1, p2, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lr4/a;->t:Landroid/view/View;

    if-eqz v1, :cond_3

    int-to-float p1, p1

    div-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    :goto_0
    int-to-float v1, v0

    div-float/2addr p1, v1

    div-float/2addr p2, p1

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    iput p1, p0, Lr4/a;->y:F

    iget-object p1, p0, Lr4/a;->q:Lr4/b;

    invoke-interface {p1}, Lr4/b;->g()V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lr4/a;->s:Landroid/graphics/Bitmap;

    new-instance p1, Lr4/d;

    iget-object p2, p0, Lr4/a;->s:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lr4/a;->r:Lr4/d;

    iput-boolean v2, p0, Lr4/a;->A:Z

    iget-boolean p1, p0, Lr4/a;->C:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lr4/a;->c()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public final b(Z)Lr4/c;
    .locals 3

    iget-object v0, p0, Lr4/a;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lr4/a;->z:La2/d;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lr4/a;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lr4/a;->w:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lr4/a;->t:Landroid/view/View;

    iget-object v2, p0, Lr4/a;->x:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v3, v2, v0

    aget v0, v1, v0

    sub-int/2addr v3, v0

    const/4 v0, 0x1

    aget v2, v2, v0

    aget v0, v1, v0

    sub-int/2addr v2, v0

    neg-int v0, v3

    int-to-float v0, v0

    iget v1, p0, Lr4/a;->y:F

    div-float/2addr v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lr4/a;->r:Lr4/d;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lr4/a;->r:Lr4/d;

    iget v1, p0, Lr4/a;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lr4/a;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/a;->B:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/a;->s:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr4/a;->r:Lr4/d;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-boolean v0, p0, Lr4/a;->C:Z

    iget-object v1, p0, Lr4/a;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/a;->r:Lr4/d;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lr4/a;->r:Lr4/d;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lr4/a;->c()V

    iget-object v0, p0, Lr4/a;->r:Lr4/d;

    invoke-virtual {v1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lr4/a;->r:Lr4/d;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    iget-object v0, p0, Lr4/a;->q:Lr4/b;

    iget-object v1, p0, Lr4/a;->s:Landroid/graphics/Bitmap;

    iget v2, p0, Lr4/a;->b:F

    invoke-interface {v0, v1, v2}, Lr4/b;->j(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lr4/a;->s:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lr4/a;->q:Lr4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr4/a;->b(Z)Lr4/c;

    iget-object v1, p0, Lr4/a;->q:Lr4/b;

    invoke-interface {v1}, Lr4/b;->destroy()V

    iput-boolean v0, p0, Lr4/a;->A:Z

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lr4/a;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lr4/a;->a(II)V

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)Z
    .locals 4

    iget-boolean v0, p0, Lr4/a;->A:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lr4/d;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lr4/a;->d()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lr4/a;->y:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lr4/a;->s:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lr4/a;->D:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lr4/a;->u:I

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method
