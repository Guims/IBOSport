.class public final Lk/G;
.super Ljava/lang/Object;

# interfaces
.implements Lk/M;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public b:Lf/f;

.field public q:Lk/H;

.field public r:Ljava/lang/CharSequence;

.field public final synthetic s:Lk/N;


# direct methods
.method public constructor <init>(Lk/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/G;->s:Lk/N;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lk/G;->b:Lf/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lk/G;->r:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lk/G;->b:Lf/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/f;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk/G;->b:Lf/f;

    :cond_0
    return-void
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lk/G;->r:Ljava/lang/CharSequence;

    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final j(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k(I)V
    .locals 1

    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final l(II)V
    .locals 4

    iget-object v0, p0, Lk/G;->q:Lk/H;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lf/e;

    iget-object v1, p0, Lk/G;->s:Lk/N;

    invoke-virtual {v1}, Lk/N;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lf/e;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lk/G;->r:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lf/e;->setTitle(Ljava/lang/CharSequence;)Lf/e;

    :cond_1
    iget-object v2, p0, Lk/G;->q:Lk/H;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    iget-object v3, v0, Lf/e;->a:Lf/b;

    iput-object v2, v3, Lf/b;->m:Ljava/lang/Object;

    iput-object p0, v3, Lf/b;->n:Landroid/content/DialogInterface$OnClickListener;

    iput v1, v3, Lf/b;->q:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Lf/b;->p:Z

    invoke-virtual {v0}, Lf/e;->create()Lf/f;

    move-result-object v0

    iput-object v0, p0, Lk/G;->b:Lf/f;

    iget-object v0, v0, Lf/f;->u:Lf/d;

    iget-object v0, v0, Lf/d;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p1, p0, Lk/G;->b:Lf/f;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n(Landroid/widget/ListAdapter;)V
    .locals 0

    check-cast p1, Lk/H;

    iput-object p1, p0, Lk/G;->q:Lk/H;

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lk/G;->s:Lk/N;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/G;->q:Lk/H;

    invoke-virtual {v0, p2}, Lk/H;->getItemId(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Lk/G;->dismiss()V

    return-void
.end method
