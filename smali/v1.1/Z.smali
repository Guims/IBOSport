.class public final Lv1/Z;
.super LJ/b;


# instance fields
.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Lv1/Y;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, LJ/b;-><init>()V

    iput-object p1, p0, Lv1/Z;->d:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Lv1/Z;->e:Lv1/Y;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lv1/Z;->e:Lv1/Y;

    return-void

    :cond_0
    new-instance p1, Lv1/Y;

    invoke-direct {p1, p0}, Lv1/Y;-><init>(Lv1/Z;)V

    iput-object p1, p0, Lv1/Z;->e:Lv1/Y;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, LJ/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv1/Z;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object p1

    invoke-virtual {p1, p2}, Lv1/G;->c0(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;LK/h;)V
    .locals 2

    iget-object v0, p0, LJ/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget-object v1, p2, LK/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lv1/Z;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object p1

    iget-object v0, p1, Lv1/G;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    invoke-virtual {p1, v1, v0, p2}, Lv1/G;->d0(Lv1/M;Lv1/T;LK/h;)V

    :cond_0
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, LJ/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lv1/Z;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->L()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lv1/G;

    move-result-object p1

    iget-object p3, p1, Lv1/G;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView;->r:Lv1/M;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->w0:Lv1/T;

    invoke-virtual {p1, p2, v0, p3}, Lv1/G;->u0(ILv1/M;Lv1/T;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
