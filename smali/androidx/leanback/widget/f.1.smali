.class public abstract Landroidx/leanback/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView;


# instance fields
.field public final X0:Landroidx/leanback/widget/o;

.field public Y0:Z

.field public Z0:Z

.field public a1:Lv1/C;

.field public b1:Lv1/N;

.field public c1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/leanback/widget/f;->Y0:Z

    iput-boolean p1, p0, Landroidx/leanback/widget/f;->Z0:Z

    const/4 p2, 0x4

    iput p2, p0, Landroidx/leanback/widget/f;->c1:I

    new-instance p2, Landroidx/leanback/widget/o;

    invoke-direct {p2, p0}, Landroidx/leanback/widget/o;-><init>(Landroidx/leanback/widget/f;)V

    iput-object p2, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPreserveFocusAfterLayout(Z)V

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lv1/C;

    move-result-object p1

    check-cast p1, Lv1/h;

    iput-boolean v0, p1, Lv1/h;->g:Z

    new-instance p1, Landroidx/leanback/widget/a;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/a;-><init>(Landroidx/leanback/widget/f;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecyclerListener(Lv1/N;)V

    return-void
.end method


# virtual methods
.method public final dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e0(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/o;->w1(IZ)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->e0(I)V

    return-void
.end method

.method public final focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ge p2, v0, :cond_1

    :goto_0
    return p2

    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ge p2, v1, :cond_2

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    :cond_2
    return v0
.end method

.method public getExtraLayoutSpace()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->X:I

    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->T:I

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->L:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->L:I

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/f;->c1:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v0, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/s;

    iget v0, v0, Landroidx/leanback/widget/s;->b:I

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v0, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/s;

    iget v0, v0, Landroidx/leanback/widget/s;->c:F

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v0, v0, LJ/l;->q:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/s;

    iget v0, v0, Landroidx/leanback/widget/s;->a:I

    return v0
.end method

.method public getOnUnhandledKeyListener()Landroidx/leanback/widget/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget v0, v0, LD5/A;->b:I

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iget v0, v0, LD5/A;->a:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->B:I

    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->M:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v0, v0, Landroidx/leanback/widget/o;->M:I

    return v0
.end method

.method public getWindowAlignment()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v0, v0, Landroidx/leanback/widget/W;->f:I

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v0, v0, Landroidx/leanback/widget/W;->g:I

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iget v0, v0, Landroidx/leanback/widget/W;->h:F

    return v0
.end method

.method public final h0(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/o;->w1(IZ)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/f;->Z0:Z

    return v0
.end method

.method public final m0(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    sget-object v0, Le0/a;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v3, v2, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v3, v3, -0x1801

    if-eqz p2, :cond_0

    const/16 p2, 0x800

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    or-int/2addr p2, v3

    if-eqz v1, :cond_1

    const/16 v1, 0x1000

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    or-int/2addr p2, v1

    iput p2, v2, Landroidx/leanback/widget/o;->z:I

    const/4 p2, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iget v4, v2, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v4, v4, -0x6001

    if-eqz p2, :cond_2

    const/16 p2, 0x2000

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    or-int/2addr p2, v4

    if-eqz v3, :cond_3

    const/16 v3, 0x4000

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    or-int/2addr p2, v3

    iput p2, v2, Landroidx/leanback/widget/o;->z:I

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iget v3, v2, Landroidx/leanback/widget/o;->r:I

    if-ne v3, v1, :cond_4

    iput p2, v2, Landroidx/leanback/widget/o;->M:I

    iput p2, v2, Landroidx/leanback/widget/o;->N:I

    goto :goto_4

    :cond_4
    iput p2, v2, Landroidx/leanback/widget/o;->M:I

    iput p2, v2, Landroidx/leanback/widget/o;->O:I

    :goto_4
    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iget v1, v2, Landroidx/leanback/widget/o;->r:I

    if-nez v1, :cond_5

    iput p2, v2, Landroidx/leanback/widget/o;->L:I

    iput p2, v2, Landroidx/leanback/widget/o;->N:I

    goto :goto_5

    :cond_5
    iput p2, v2, Landroidx/leanback/widget/o;->L:I

    iput p2, v2, Landroidx/leanback/widget/o;->O:I

    :goto_5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/f;->setGravity(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p2, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    if-eqz p1, :cond_2

    iget p1, p2, Landroidx/leanback/widget/o;->B:I

    :goto_0
    invoke-virtual {p2, p1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 10

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->T:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    iget v1, v0, Landroidx/leanback/widget/o;->B:I

    invoke-virtual {v0, v1}, Lv1/G;->s(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0}, Lv1/G;->x()I

    move-result v1

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    move v4, v1

    move v1, v2

    move v5, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    const/4 v4, -0x1

    move v5, v4

    :goto_0
    iget-object v6, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v6, v6, LK1/c;->s:Ljava/lang/Object;

    check-cast v6, Landroidx/leanback/widget/W;

    iget v7, v6, Landroidx/leanback/widget/W;->j:I

    iget v8, v6, Landroidx/leanback/widget/W;->i:I

    sub-int/2addr v8, v7

    iget v6, v6, Landroidx/leanback/widget/W;->k:I

    sub-int/2addr v8, v6

    add-int/2addr v8, v7

    :goto_1
    if-eq v1, v4, :cond_3

    invoke-virtual {v0, v1}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v9, v6}, Landroidx/emoji2/text/f;->e(Landroid/view/View;)I

    move-result v9

    if-lt v9, v7, :cond_2

    iget-object v9, v0, Landroidx/leanback/widget/o;->s:Landroidx/emoji2/text/f;

    invoke-virtual {v9, v6}, Landroidx/emoji2/text/f;->b(Landroid/view/View;)I

    move-result v9

    if-gt v9, v8, :cond_2

    invoke-virtual {v6, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v3

    :cond_2
    add-int/2addr v1, v5

    goto :goto_1

    :cond_3
    return v2
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 6

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-ne p1, v3, :cond_0

    const/high16 v1, 0x40000

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_0

    const/high16 v1, 0x80000

    :goto_0
    iget v4, v0, Landroidx/leanback/widget/o;->z:I

    const/high16 v5, 0xc0000

    and-int/2addr v5, v4

    if-ne v5, v1, :cond_2

    return-void

    :cond_2
    const v5, -0xc0001

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    if-ne p1, v3, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, v0, Landroidx/leanback/widget/W;->l:Z

    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/f;->Y0:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroidx/leanback/widget/f;->Y0:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lv1/C;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/f;->a1:Lv1/C;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lv1/C;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/f;->a1:Lv1/C;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lv1/C;)V

    :cond_1
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iput p1, v0, Landroidx/leanback/widget/o;->F:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lv1/G;->x()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {v0, v1}, Lv1/G;->w(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroidx/leanback/widget/o;->F:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->X:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-ltz v1, :cond_1

    iput p1, v0, Landroidx/leanback/widget/o;->X:I

    invoke-virtual {v0}, Lv1/G;->B0()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ExtraLayoutSpace must >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scrollStrategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iput p1, v0, Landroidx/leanback/widget/o;->T:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    const v2, -0x8001

    and-int/2addr v1, v2

    if-eqz p1, :cond_1

    const p1, 0x8000

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    or-int/2addr p1, v1

    iput p1, v0, Landroidx/leanback/widget/o;->z:I

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iput p1, v0, Landroidx/leanback/widget/o;->P:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/f;->Z0:Z

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->r:I

    if-nez v1, :cond_0

    iput p1, v0, Landroidx/leanback/widget/o;->L:I

    iput p1, v0, Landroidx/leanback/widget/o;->N:I

    goto :goto_0

    :cond_0
    iput p1, v0, Landroidx/leanback/widget/o;->L:I

    iput p1, v0, Landroidx/leanback/widget/o;->O:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/f;->c1:I

    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v1, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v1, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/s;

    iput p1, v1, Landroidx/leanback/widget/s;->b:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->x1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v1, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v1, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    :cond_1
    iput p1, v1, Landroidx/leanback/widget/s;->c:F

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->x1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v1, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v1, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/s;

    iput-boolean p1, v1, Landroidx/leanback/widget/s;->d:Z

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->x1()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v1, v0, Landroidx/leanback/widget/o;->V:LJ/l;

    iget-object v1, v1, LJ/l;->q:Ljava/lang/Object;

    check-cast v1, Landroidx/leanback/widget/s;

    iput p1, v1, Landroidx/leanback/widget/s;->a:I

    invoke-virtual {v0}, Landroidx/leanback/widget/o;->x1()V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setItemSpacing(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iput p1, v0, Landroidx/leanback/widget/o;->L:I

    iput p1, v0, Landroidx/leanback/widget/o;->M:I

    iput p1, v0, Landroidx/leanback/widget/o;->O:I

    iput p1, v0, Landroidx/leanback/widget/o;->N:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/lit16 v2, v1, 0x200

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_2

    and-int/lit16 v1, v1, -0x201

    if-eqz p1, :cond_1

    const/16 v3, 0x200

    :cond_1
    or-int p1, v1, v3

    iput p1, v0, Landroidx/leanback/widget/o;->z:I

    invoke-virtual {v0}, Lv1/G;->B0()V

    :cond_2
    return-void
.end method

.method public setOnChildLaidOutListener(Landroidx/leanback/widget/v;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/w;)V
    .locals 0

    iget-object p1, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/x;)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, v0, Landroidx/leanback/widget/o;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnKeyInterceptListener(Landroidx/leanback/widget/b;)V
    .locals 0

    return-void
.end method

.method public setOnMotionInterceptListener(Landroidx/leanback/widget/c;)V
    .locals 0

    return-void
.end method

.method public setOnTouchInterceptListener(Landroidx/leanback/widget/d;)V
    .locals 0

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroidx/leanback/widget/e;)V
    .locals 0

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x10000

    and-int v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eq v3, p1, :cond_2

    const v3, -0x10001

    and-int/2addr v1, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    or-int/2addr v1, v2

    iput v1, v0, Landroidx/leanback/widget/o;->z:I

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lv1/G;->B0()V

    :cond_2
    return-void
.end method

.method public setRecyclerListener(Lv1/N;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/f;->b1:Lv1/N;

    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iput p1, v0, LD5/A;->b:I

    invoke-virtual {v0}, LD5/A;->d()V

    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->Z:LD5/A;

    iput p1, v0, LD5/A;->a:I

    invoke-virtual {v0}, LD5/A;->d()V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 6

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->z:I

    const/high16 v2, 0x20000

    and-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eq v3, p1, :cond_2

    const v3, -0x20001

    and-int/2addr v1, v3

    if-eqz p1, :cond_1

    move v4, v2

    :cond_1
    or-int p1, v1, v4

    iput p1, v0, Landroidx/leanback/widget/o;->z:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    iget p1, v0, Landroidx/leanback/widget/o;->T:I

    if-nez p1, :cond_2

    iget p1, v0, Landroidx/leanback/widget/o;->B:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {v0, p1, v5}, Landroidx/leanback/widget/o;->r1(IZ)V

    :cond_2
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/o;->w1(IZ)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/o;->w1(IZ)V

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setVerticalSpacing(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget v1, v0, Landroidx/leanback/widget/o;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput p1, v0, Landroidx/leanback/widget/o;->M:I

    iput p1, v0, Landroidx/leanback/widget/o;->N:I

    goto :goto_0

    :cond_0
    iput p1, v0, Landroidx/leanback/widget/o;->M:I

    iput p1, v0, Landroidx/leanback/widget/o;->O:I

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iput p1, v0, Landroidx/leanback/widget/W;->f:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    iput p1, v0, Landroidx/leanback/widget/W;->g:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    :cond_1
    iput p1, v0, Landroidx/leanback/widget/W;->h:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    if-eqz p1, :cond_0

    iget p1, v0, Landroidx/leanback/widget/W;->e:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, v0, Landroidx/leanback/widget/W;->e:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, v0, Landroidx/leanback/widget/W;->e:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/f;->X0:Landroidx/leanback/widget/o;

    iget-object v0, v0, Landroidx/leanback/widget/o;->U:LK1/c;

    iget-object v0, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/leanback/widget/W;

    if-eqz p1, :cond_0

    iget p1, v0, Landroidx/leanback/widget/W;->e:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, v0, Landroidx/leanback/widget/W;->e:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, v0, Landroidx/leanback/widget/W;->e:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
