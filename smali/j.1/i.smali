.class public final Lj/i;
.super Ljava/lang/Object;

# interfaces
.implements Lj/y;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public b:Landroid/content/Context;

.field public q:Landroid/view/LayoutInflater;

.field public r:Lj/m;

.field public s:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public t:Lj/x;

.field public u:Lj/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/i;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lj/i;->q:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final b(Lj/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lj/m;Z)V
    .locals 1

    iget-object v0, p0, Lj/i;->t:Lj/x;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lj/x;->d(Lj/m;Z)V

    :cond_0
    return-void
.end method

.method public final e(Lj/x;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final f(Lj/E;)Z
    .locals 5

    invoke-virtual {p1}, Lj/m;->hasVisibleItems()Z

    move-result v0

    iget-object v1, p1, Lj/m;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Lj/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lj/n;->b:Lj/E;

    new-instance v2, Lf/e;

    invoke-direct {v2, v1}, Lf/e;-><init>(Landroid/content/Context;)V

    new-instance v3, Lj/i;

    invoke-virtual {v2}, Lf/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lj/n;->r:Lj/i;

    iput-object v0, v3, Lj/i;->t:Lj/x;

    invoke-virtual {p1, v3, v1}, Lj/m;->b(Lj/y;Landroid/content/Context;)V

    iget-object v1, v0, Lj/n;->r:Lj/i;

    iget-object v3, v1, Lj/i;->u:Lj/h;

    if-nez v3, :cond_1

    new-instance v3, Lj/h;

    invoke-direct {v3, v1}, Lj/h;-><init>(Lj/i;)V

    iput-object v3, v1, Lj/i;->u:Lj/h;

    :cond_1
    iget-object v1, v1, Lj/i;->u:Lj/h;

    iget-object v3, v2, Lf/e;->a:Lf/b;

    iput-object v1, v3, Lf/b;->m:Ljava/lang/Object;

    iput-object v0, v3, Lf/b;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p1, Lj/m;->o:Landroid/view/View;

    if-eqz v1, :cond_2

    iput-object v1, v3, Lf/b;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lj/m;->n:Landroid/graphics/drawable/Drawable;

    iput-object v1, v3, Lf/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lj/m;->m:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Lf/e;->setTitle(Ljava/lang/CharSequence;)Lf/e;

    :goto_0
    iput-object v0, v3, Lf/b;->l:Lj/n;

    invoke-virtual {v2}, Lf/e;->create()Lf/f;

    move-result-object v1

    iput-object v1, v0, Lj/n;->q:Lf/f;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lj/n;->q:Lf/f;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lj/n;->q:Lf/f;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lj/i;->t:Lj/x;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lj/x;->D(Lj/m;)Z

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lj/i;->u:Lj/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final j(Landroid/content/Context;Lj/m;)V
    .locals 1

    iget-object v0, p0, Lj/i;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lj/i;->b:Landroid/content/Context;

    iget-object v0, p0, Lj/i;->q:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lj/i;->q:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lj/i;->r:Lj/m;

    iget-object p1, p0, Lj/i;->u:Lj/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj/h;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final k(Lj/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lj/i;->r:Lj/m;

    iget-object p2, p0, Lj/i;->u:Lj/h;

    invoke-virtual {p2, p3}, Lj/h;->b(I)Lj/o;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lj/m;->q(Landroid/view/MenuItem;Lj/y;I)Z

    return-void
.end method
