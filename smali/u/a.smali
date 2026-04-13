.class public final Lu/a;
.super Lu/c;


# instance fields
.field public w:I

.field public x:I

.field public y:Lr/a;


# virtual methods
.method public getAllowsGoneWidget()Z
    .locals 1

    iget-object v0, p0, Lu/a;->y:Lr/a;

    iget-boolean v0, v0, Lr/a;->t0:Z

    return v0
.end method

.method public getMargin()I
    .locals 1

    iget-object v0, p0, Lu/a;->y:Lr/a;

    iget v0, v0, Lr/a;->u0:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lu/a;->w:I

    return v0
.end method

.method public final h(Lr/d;Z)V
    .locals 5

    iget v0, p0, Lu/a;->w:I

    iput v0, p0, Lu/a;->x:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eqz p2, :cond_1

    if-ne v0, v4, :cond_0

    iput v3, p0, Lu/a;->x:I

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_3

    iput v1, p0, Lu/a;->x:I

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    iput v1, p0, Lu/a;->x:I

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    iput v3, p0, Lu/a;->x:I

    :cond_3
    :goto_0
    instance-of p2, p1, Lr/a;

    if-eqz p2, :cond_4

    check-cast p1, Lr/a;

    iget p2, p0, Lu/a;->x:I

    iput p2, p1, Lr/a;->s0:I

    :cond_4
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    iget-object v0, p0, Lu/a;->y:Lr/a;

    iput-boolean p1, v0, Lr/a;->t0:Z

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lu/a;->y:Lr/a;

    iput p1, v0, Lr/a;->u0:I

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    iget-object v0, p0, Lu/a;->y:Lr/a;

    iput p1, v0, Lr/a;->u0:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lu/a;->w:I

    return-void
.end method
