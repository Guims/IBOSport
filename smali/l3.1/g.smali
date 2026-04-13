.class public final Ll3/g;
.super Lh3/g;


# static fields
.field public static final synthetic N:I


# instance fields
.field public M:Ll3/f;


# virtual methods
.method public final f(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Ll3/g;->M:Ll3/f;

    iget-object v0, v0, Ll3/f;->q:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lh3/g;->f(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Ll3/g;->M:Ll3/f;

    iget-object v0, v0, Ll3/f;->q:Landroid/graphics/RectF;

    invoke-static {p1, v0}, LW3/h;->z(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ll3/g;->M:Ll3/f;

    iget-object v0, v0, Ll3/f;->q:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    :goto_0
    invoke-super {p0, p1}, Lh3/g;->f(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Ll3/f;

    iget-object v1, p0, Ll3/g;->M:Ll3/f;

    invoke-direct {v0, v1}, Ll3/f;-><init>(Ll3/f;)V

    iput-object v0, p0, Ll3/g;->M:Ll3/f;

    return-object p0
.end method

.method public final o(FFFF)V
    .locals 2

    iget-object v0, p0, Ll3/g;->M:Ll3/f;

    iget-object v0, v0, Ll3/f;->q:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p3, v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lh3/g;->invalidateSelf()V

    return-void
.end method
