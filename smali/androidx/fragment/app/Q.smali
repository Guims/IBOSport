.class public final Landroidx/fragment/app/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/Q;->b:I

    iput-object p2, p0, Landroidx/fragment/app/Q;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Landroidx/fragment/app/Q;->b:I

    iget-object v0, p0, Landroidx/fragment/app/Q;->q:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Ll3/m;

    iget-object p1, v0, Ll3/m;->I:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, v0, Ll3/m;->J:LA3/d;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll3/m;->J:LA3/d;

    new-instance v1, LK/b;

    invoke-direct {v1, v0}, LK/b;-><init>(LA3/d;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p1, LJ/U;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LJ/F;->c(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/Q;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Landroidx/fragment/app/Q;->q:Ljava/lang/Object;

    check-cast p1, Ll3/m;

    iget-object v0, p1, Ll3/m;->J:LA3/d;

    if-eqz v0, :cond_0

    iget-object p1, p1, Ll3/m;->I:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    new-instance v1, LK/b;

    invoke-direct {v1, v0}, LK/b;-><init>(LA3/d;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/Q;->q:Ljava/lang/Object;

    check-cast v0, Lj/D;

    iget-object v1, v0, Lj/D;->D:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lj/D;->D:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v1, v0, Lj/D;->D:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lj/D;->x:Lj/d;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/Q;->q:Ljava/lang/Object;

    check-cast v0, Lj/g;

    iget-object v1, v0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, v0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    :cond_3
    iget-object v1, v0, Lj/g;->M:Landroid/view/ViewTreeObserver;

    iget-object v0, v0, Lj/g;->x:Lj/d;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
