.class public final Landroidx/leanback/widget/SeekBar;
.super Landroid/view/View;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public final b:Landroid/graphics/RectF;

.field public final q:Landroid/graphics/RectF;

.field public final r:Landroid/graphics/RectF;

.field public final s:Landroid/graphics/Paint;

.field public final t:Landroid/graphics/Paint;

.field public final u:Landroid/graphics/Paint;

.field public final v:Landroid/graphics/Paint;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->q:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->r:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->s:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroidx/leanback/widget/SeekBar;->t:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroidx/leanback/widget/SeekBar;->u:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Landroidx/leanback/widget/SeekBar;->v:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const v0, -0x777778

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v0, -0x333334

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, -0x10000

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, -0x1

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07048e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SeekBar;->B:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07048c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SeekBar;->C:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07048d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->A:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->C:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->B:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Landroidx/leanback/widget/SeekBar;->B:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    int-to-float v5, v0

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->r:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/SeekBar;->A:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/leanback/widget/SeekBar;->B:I

    div-int/lit8 v2, v2, 0x2

    :goto_1
    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Landroidx/leanback/widget/SeekBar;->w:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->y:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->B:I

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v3

    iget-object v7, p0, Landroidx/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    invoke-virtual {v7, v6, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->x:I

    int-to-float v4, v4

    iget v6, p0, Landroidx/leanback/widget/SeekBar;->y:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float/2addr v4, v1

    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v6, p0, Landroidx/leanback/widget/SeekBar;->B:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v4

    iget-object v4, p0, Landroidx/leanback/widget/SeekBar;->q:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-int v0, v3

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/leanback/widget/SeekBar;->z:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->y:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->w:I

    return v0
.end method

.method public getSecondProgress()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->x:I

    return v0
.end method

.method public getSecondaryProgressColor()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SeekBar;->s:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->A:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->B:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    int-to-float v0, v0

    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->u:Landroid/graphics/Paint;

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->r:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->q:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Landroidx/leanback/widget/SeekBar;->z:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/leanback/widget/SeekBar;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setAccessibilitySeekListener(Landroidx/leanback/widget/M;)V
    .locals 0

    return-void
.end method

.method public setActiveBarHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->C:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setActiveRadius(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->A:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->B:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->y:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->y:I

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->w:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SeekBar;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->y:I

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/SeekBar;->x:I

    invoke-virtual {p0}, Landroidx/leanback/widget/SeekBar;->a()V

    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/SeekBar;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
