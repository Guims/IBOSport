.class public final Lj/g;
.super Lj/u;

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public A:I

.field public B:I

.field public C:Landroid/view/View;

.field public D:Landroid/view/View;

.field public E:I

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:Z

.field public K:Z

.field public L:Lj/x;

.field public M:Landroid/view/ViewTreeObserver;

.field public N:Landroid/widget/PopupWindow$OnDismissListener;

.field public O:Z

.field public final q:Landroid/content/Context;

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:Landroid/os/Handler;

.field public final v:Ljava/util/ArrayList;

.field public final w:Ljava/util/ArrayList;

.field public final x:Lj/d;

.field public final y:Landroidx/fragment/app/Q;

.field public final z:Lcom/bumptech/glide/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/g;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    new-instance v0, Lj/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lj/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj/g;->x:Lj/d;

    new-instance v0, Landroidx/fragment/app/Q;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/Q;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj/g;->y:Landroidx/fragment/app/Q;

    new-instance v0, Lcom/bumptech/glide/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lj/g;->z:Lcom/bumptech/glide/f;

    const/4 v0, 0x0

    iput v0, p0, Lj/g;->A:I

    iput v0, p0, Lj/g;->B:I

    iput-object p1, p0, Lj/g;->q:Landroid/content/Context;

    iput-object p2, p0, Lj/g;->C:Landroid/view/View;

    iput p3, p0, Lj/g;->s:I

    iput-boolean p4, p0, Lj/g;->t:Z

    iput-boolean v0, p0, Lj/g;->J:Z

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lj/g;->E:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    const p3, 0x7f07030f

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lj/g;->r:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lj/g;->u:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/f;

    iget-object v0, v0, Lj/f;->a:Lk/F0;

    iget-object v0, v0, Lk/A0;->O:Lk/y;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lj/m;Z)V
    .locals 6

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/f;

    iget-object v4, v4, Lj/f;->b:Lj/m;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/f;

    iget-object v1, v1, Lj/f;->b:Lj/m;

    invoke-virtual {v1, v2}, Lj/m;->c(Z)V

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/f;

    iget-object v3, v1, Lj/f;->b:Lj/m;

    iget-object v1, v1, Lj/f;->a:Lk/F0;

    iget-object v4, v1, Lk/A0;->O:Lk/y;

    invoke-virtual {v3, p0}, Lj/m;->r(Lj/y;)V

    iget-boolean v3, p0, Lj/g;->O:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-static {v4, v5}, Lk/C0;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    invoke-virtual {v1}, Lk/A0;->dismiss()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_5

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/f;

    iget v4, v4, Lj/f;->c:I

    iput v4, p0, Lj/g;->E:I

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lj/g;->C:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    iput v4, p0, Lj/g;->E:I

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0}, Lj/g;->dismiss()V

    iget-object p2, p0, Lj/g;->L:Lj/x;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1, v3}, Lj/x;->d(Lj/m;Z)V

    :cond_7
    iget-object p1, p0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lj/g;->x:Lj/d;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_8
    iput-object v5, p0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    :cond_9
    iget-object p1, p0, Lj/g;->D:Landroid/view/View;

    iget-object p2, p0, Lj/g;->y:Landroidx/fragment/app/Q;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lj/g;->N:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj/f;

    iget-object p1, p1, Lj/f;->b:Lj/m;

    invoke-virtual {p1, v2}, Lj/m;->c(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public final dismiss()V
    .locals 4

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-array v2, v1, [Lj/f;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj/f;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    iget-object v3, v2, Lj/f;->a:Lk/F0;

    iget-object v3, v3, Lk/A0;->O:Lk/y;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lj/f;->a:Lk/F0;

    invoke-virtual {v2}, Lk/A0;->dismiss()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lj/x;)V
    .locals 0

    iput-object p1, p0, Lj/g;->L:Lj/x;

    return-void
.end method

.method public final f(Lj/E;)Z
    .locals 7

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lj/f;

    iget-object v6, v5, Lj/f;->b:Lj/m;

    if-ne p1, v6, :cond_0

    iget-object p1, v5, Lj/f;->a:Lk/F0;

    iget-object p1, p1, Lk/A0;->r:Lk/o0;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_1
    invoke-virtual {p1}, Lj/m;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lj/g;->l(Lj/m;)V

    iget-object v0, p0, Lj/g;->L:Lj/x;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lj/x;->D(Lj/m;)Z

    :cond_2
    return v4

    :cond_3
    return v2
.end method

.method public final g()V
    .locals 5

    invoke-virtual {p0}, Lj/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj/g;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lj/m;

    invoke-virtual {p0, v4}, Lj/g;->u(Lj/m;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lj/g;->C:Landroid/view/View;

    iput-object v0, p0, Lj/g;->D:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_3

    iget-object v1, p0, Lj/g;->x:Lj/d;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lj/g;->D:Landroid/view/View;

    iget-object v1, p0, Lj/g;->y:Landroidx/fragment/app/Q;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lj/f;

    iget-object v3, v3, Lj/f;->a:Lk/F0;

    iget-object v3, v3, Lk/A0;->r:Lk/o0;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lj/j;

    goto :goto_1

    :cond_0
    check-cast v3, Lj/j;

    :goto_1
    invoke-virtual {v3}, Lj/j;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i()Lk/o0;
    .locals 2

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/f;

    iget-object v0, v0, Lj/f;->a:Lk/F0;

    iget-object v0, v0, Lk/A0;->r:Lk/o0;

    return-object v0
.end method

.method public final l(Lj/m;)V
    .locals 1

    iget-object v0, p0, Lj/g;->q:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lj/m;->b(Lj/y;Landroid/content/Context;)V

    invoke-virtual {p0}, Lj/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lj/g;->u(Lj/m;)V

    return-void

    :cond_0
    iget-object v0, p0, Lj/g;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lj/g;->C:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lj/g;->C:Landroid/view/View;

    iget v0, p0, Lj/g;->A:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lj/g;->B:I

    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lj/g;->J:Z

    return-void
.end method

.method public final onDismiss()V
    .locals 6

    iget-object v0, p0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/f;

    iget-object v5, v4, Lj/f;->a:Lk/F0;

    iget-object v5, v5, Lk/A0;->O:Lk/y;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget-object v0, v4, Lj/f;->b:Lj/m;

    invoke-virtual {v0, v2}, Lj/m;->c(Z)V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lj/g;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(I)V
    .locals 1

    iget v0, p0, Lj/g;->A:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lj/g;->A:I

    iget-object v0, p0, Lj/g;->C:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Lj/g;->B:I

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/g;->F:Z

    iput p1, p0, Lj/g;->H:I

    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lj/g;->N:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Lj/g;->K:Z

    return-void
.end method

.method public final t(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/g;->G:Z

    iput p1, p0, Lj/g;->I:I

    return-void
.end method

.method public final u(Lj/m;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lj/g;->q:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Lj/j;

    iget-boolean v5, v0, Lj/g;->t:Z

    const v6, 0x7f0e000b

    invoke-direct {v4, v1, v3, v5, v6}, Lj/j;-><init>(Lj/m;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual {v0}, Lj/g;->a()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lj/g;->J:Z

    if-eqz v5, :cond_0

    iput-boolean v6, v4, Lj/j;->c:Z

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lj/g;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Lj/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_2

    invoke-virtual {v1, v8}, Lj/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_1
    iput-boolean v5, v4, Lj/j;->c:Z

    :cond_3
    :goto_2
    iget v5, v0, Lj/g;->r:I

    invoke-static {v4, v2, v5}, Lj/u;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v5

    new-instance v8, Lk/F0;

    iget v9, v0, Lj/g;->s:I

    const/4 v10, 0x0

    invoke-direct {v8, v2, v10, v9, v7}, Lk/A0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v2, v0, Lj/g;->z:Lcom/bumptech/glide/f;

    iput-object v2, v8, Lk/F0;->R:Lcom/bumptech/glide/f;

    iput-object v0, v8, Lk/A0;->E:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v2, v8, Lk/A0;->O:Lk/y;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v2, v0, Lj/g;->C:Landroid/view/View;

    iput-object v2, v8, Lk/A0;->D:Landroid/view/View;

    iget v2, v0, Lj/g;->B:I

    iput v2, v8, Lk/A0;->A:I

    iput-boolean v6, v8, Lk/A0;->N:Z

    iget-object v2, v8, Lk/A0;->O:Lk/y;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, v8, Lk/A0;->O:Lk/y;

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v8, v4}, Lk/A0;->n(Landroid/widget/ListAdapter;)V

    invoke-virtual {v8, v5}, Lk/A0;->q(I)V

    iget v2, v0, Lj/g;->B:I

    iput v2, v8, Lk/A0;->A:I

    iget-object v2, v0, Lj/g;->w:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/f;

    iget-object v11, v4, Lj/f;->b:Lj/m;

    iget-object v12, v11, Lj/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v7

    :goto_3
    if-ge v13, v12, :cond_5

    invoke-virtual {v11, v13}, Lj/m;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v15

    if-ne v1, v15, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    move-object v14, v10

    :goto_4
    if-nez v14, :cond_6

    move/from16 v16, v6

    move-object v6, v10

    goto :goto_9

    :cond_6
    iget-object v11, v4, Lj/f;->a:Lk/F0;

    iget-object v11, v11, Lk/A0;->r:Lk/o0;

    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_7

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Lj/j;

    goto :goto_5

    :cond_7
    check-cast v12, Lj/j;

    move v13, v7

    :goto_5
    invoke-virtual {v12}, Lj/j;->getCount()I

    move-result v15

    move/from16 v16, v6

    move v6, v7

    :goto_6
    const/4 v9, -0x1

    if-ge v6, v15, :cond_9

    invoke-virtual {v12, v6}, Lj/j;->b(I)Lj/o;

    move-result-object v10

    if-ne v14, v10, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    move v6, v9

    :goto_7
    if-ne v6, v9, :cond_a

    goto :goto_8

    :cond_a
    add-int/2addr v6, v13

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v6, v9

    if-ltz v6, :cond_d

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v6, v9, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_9

    :cond_c
    move/from16 v16, v6

    const/4 v4, 0x0

    :cond_d
    :goto_8
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_19

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    iget-object v11, v8, Lk/A0;->O:Lk/y;

    if-gt v9, v10, :cond_e

    sget-object v9, Lk/F0;->S:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_f

    :try_start_0
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    const-string v9, "MenuPopupWindow"

    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_e
    invoke-static {v11, v7}, Lk/D0;->a(Landroid/widget/PopupWindow;Z)V

    :cond_f
    :goto_a
    iget-object v9, v8, Lk/A0;->O:Lk/y;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lk/C0;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lj/f;

    iget-object v9, v9, Lj/f;->a:Lk/F0;

    iget-object v9, v9, Lk/A0;->r:Lk/o0;

    const/4 v10, 0x2

    new-array v11, v10, [I

    invoke-virtual {v9, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lj/g;->D:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v12, v0, Lj/g;->E:I

    move/from16 v13, v16

    if-ne v12, v13, :cond_12

    aget v11, v11, v7

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_11

    :cond_10
    move v9, v7

    :goto_b
    const/4 v13, 0x1

    goto :goto_d

    :cond_11
    :goto_c
    const/4 v9, 0x1

    goto :goto_b

    :cond_12
    aget v9, v11, v7

    sub-int/2addr v9, v5

    if-gez v9, :cond_10

    goto :goto_c

    :goto_d
    if-ne v9, v13, :cond_13

    const/4 v13, 0x1

    goto :goto_e

    :cond_13
    move v13, v7

    :goto_e
    iput v9, v0, Lj/g;->E:I

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v9, v10, :cond_14

    iput-object v6, v8, Lk/A0;->D:Landroid/view/View;

    move v10, v7

    move v12, v10

    goto :goto_f

    :cond_14
    const/4 v10, 0x2

    new-array v9, v10, [I

    iget-object v12, v0, Lj/g;->C:Landroid/view/View;

    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v10, v10, [I

    invoke-virtual {v6, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v12, v0, Lj/g;->B:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_15

    aget v12, v9, v7

    iget-object v14, v0, Lj/g;->C:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v9, v7

    aget v12, v10, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v10, v7

    :cond_15
    aget v12, v10, v7

    aget v14, v9, v7

    sub-int/2addr v12, v14

    const/16 v16, 0x1

    aget v10, v10, v16

    aget v9, v9, v16

    sub-int/2addr v10, v9

    :goto_f
    iget v9, v0, Lj/g;->B:I

    and-int/2addr v9, v11

    if-ne v9, v11, :cond_18

    if-eqz v13, :cond_16

    add-int/2addr v12, v5

    goto :goto_10

    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_17
    sub-int/2addr v12, v5

    goto :goto_10

    :cond_18
    if-eqz v13, :cond_17

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v12, v5

    :goto_10
    iput v12, v8, Lk/A0;->u:I

    const/4 v13, 0x1

    iput-boolean v13, v8, Lk/A0;->z:Z

    iput-boolean v13, v8, Lk/A0;->y:Z

    invoke-virtual {v8, v10}, Lk/A0;->j(I)V

    goto :goto_12

    :cond_19
    iget-boolean v5, v0, Lj/g;->F:Z

    if-eqz v5, :cond_1a

    iget v5, v0, Lj/g;->H:I

    iput v5, v8, Lk/A0;->u:I

    :cond_1a
    iget-boolean v5, v0, Lj/g;->G:Z

    if-eqz v5, :cond_1b

    iget v5, v0, Lj/g;->I:I

    invoke-virtual {v8, v5}, Lk/A0;->j(I)V

    :cond_1b
    iget-object v5, v0, Lj/u;->b:Landroid/graphics/Rect;

    if-eqz v5, :cond_1c

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_11

    :cond_1c
    const/4 v10, 0x0

    :goto_11
    iput-object v10, v8, Lk/A0;->M:Landroid/graphics/Rect;

    :goto_12
    new-instance v5, Lj/f;

    iget v6, v0, Lj/g;->E:I

    invoke-direct {v5, v8, v1, v6}, Lj/f;-><init>(Lk/F0;Lj/m;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lk/A0;->g()V

    iget-object v2, v8, Lk/A0;->r:Lk/o0;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v4, :cond_1d

    iget-boolean v4, v0, Lj/g;->K:Z

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lj/m;->m:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1d

    const v4, 0x7f0e0012

    invoke-virtual {v3, v4, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, v1, Lj/m;->m:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v8}, Lk/A0;->g()V

    :cond_1d
    return-void
.end method
