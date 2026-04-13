.class public Lib/player/base/view/LiveVerticalGridView;
.super Landroidx/leanback/widget/VerticalGridView;


# instance fields
.field public d1:I

.field public e1:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/VerticalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lib/player/base/view/LiveVerticalGridView;->d1:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lib/player/base/view/LiveVerticalGridView;->e1:Z

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroidx/leanback/widget/f;->getSelectedPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v1

    invoke-virtual {v1}, Lv1/y;->a()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lib/player/base/view/LiveVerticalGridView;->e1:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v5

    :cond_1
    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lv1/y;

    move-result-object p1

    invoke-virtual {p1}, Lv1/y;->a()I

    move-result p1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lib/player/base/view/LiveVerticalGridView;->e1:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, v5

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/f;->setSelectedPosition(I)V

    return v5

    :cond_2
    return v3

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/leanback/widget/f;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lib/player/base/view/LiveVerticalGridView;->d1:I

    return v0
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lib/player/base/view/LiveVerticalGridView;->e1:Z

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lib/player/base/view/LiveVerticalGridView;->d1:I

    return-void
.end method
