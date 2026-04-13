.class public final Landroidx/leanback/widget/y;
.super Landroid/util/Property;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Landroidx/leanback/widget/y;->a:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/y;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/view/View;

    sget-object v0, Lz1/v;->a:Lz1/B;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_2
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_3
    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    return-object p1

    :pswitch_4
    check-cast p1, Lz1/d;

    const/4 p1, 0x0

    return-object p1

    :pswitch_5
    check-cast p1, Lz1/d;

    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    check-cast p1, Landroidx/leanback/widget/T;

    invoke-virtual {p1}, Landroidx/leanback/widget/T;->getStreamPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Landroidx/leanback/widget/z;

    iget p1, p1, Landroidx/leanback/widget/z;->c:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Landroidx/leanback/widget/z;

    iget p1, p1, Landroidx/leanback/widget/z;->e:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Landroidx/leanback/widget/z;

    iget p1, p1, Landroidx/leanback/widget/z;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/leanback/widget/y;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Lz1/v;->a:Lz1/B;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/c;->o(Landroid/view/View;F)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Lz1/v;->a(Landroid/view/View;IIII)V

    return-void

    :pswitch_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1, v0, p2, v1, v2}, Lz1/v;->a(Landroid/view/View;IIII)V

    return-void

    :pswitch_3
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lz1/v;->a(Landroid/view/View;IIII)V

    return-void

    :pswitch_4
    check-cast p1, Lz1/d;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lz1/d;->c:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lz1/d;->d:I

    iget v0, p1, Lz1/d;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lz1/d;->g:I

    iget v1, p1, Lz1/d;->f:I

    if-ne v1, v0, :cond_0

    iget-object v0, p1, Lz1/d;->e:Landroid/view/View;

    iget v1, p1, Lz1/d;->a:I

    iget v2, p1, Lz1/d;->b:I

    iget v3, p1, Lz1/d;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Lz1/v;->a(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lz1/d;->f:I

    iput p2, p1, Lz1/d;->g:I

    :cond_0
    return-void

    :pswitch_5
    check-cast p1, Lz1/d;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Lz1/d;->a:I

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Lz1/d;->b:I

    iget v0, p1, Lz1/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lz1/d;->f:I

    iget v1, p1, Lz1/d;->g:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lz1/d;->e:Landroid/view/View;

    iget v1, p1, Lz1/d;->a:I

    iget v2, p1, Lz1/d;->c:I

    iget v3, p1, Lz1/d;->d:I

    invoke-static {v0, v1, p2, v2, v3}, Lz1/v;->a(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    iput p2, p1, Lz1/d;->f:I

    iput p2, p1, Lz1/d;->g:I

    :cond_1
    return-void

    :pswitch_6
    check-cast p1, Landroidx/leanback/widget/T;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/T;->setStreamPosition(I)V

    return-void

    :pswitch_7
    check-cast p1, Landroidx/leanback/widget/z;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget v0, p1, Landroidx/leanback/widget/z;->h:F

    mul-float/2addr p2, v0

    iget v0, p1, Landroidx/leanback/widget/z;->i:F

    mul-float/2addr p2, v0

    iput p2, p1, Landroidx/leanback/widget/z;->c:F

    iget-object p1, p1, Landroidx/leanback/widget/z;->j:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_8
    check-cast p1, Landroidx/leanback/widget/z;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/z;->e:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p1, Landroidx/leanback/widget/z;->f:F

    iget-object v0, p1, Landroidx/leanback/widget/z;->j:Landroidx/leanback/widget/PagingIndicator;

    iget v1, v0, Landroidx/leanback/widget/PagingIndicator;->K:F

    mul-float/2addr p2, v1

    iput p2, p1, Landroidx/leanback/widget/z;->g:F

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_9
    check-cast p1, Landroidx/leanback/widget/z;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/z;->a:F

    invoke-virtual {p1}, Landroidx/leanback/widget/z;->a()V

    iget-object p1, p1, Landroidx/leanback/widget/z;->j:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
