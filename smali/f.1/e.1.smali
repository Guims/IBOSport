.class public Lf/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lf/b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lf/f;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lf/e;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lf/f;->g(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lf/b;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Lf/e;->a:Lf/b;

    iput p2, p0, Lf/e;->b:I

    return-void
.end method


# virtual methods
.method public create()Lf/f;
    .locals 11

    new-instance v0, Lf/f;

    iget-object v1, p0, Lf/e;->a:Lf/b;

    iget-object v2, v1, Lf/b;->a:Landroid/view/ContextThemeWrapper;

    iget v3, p0, Lf/e;->b:I

    invoke-direct {v0, v2, v3}, Lf/f;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object v2, v1, Lf/b;->e:Landroid/view/View;

    iget-object v3, v0, Lf/f;->u:Lf/d;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iput-object v2, v3, Lf/d;->w:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lf/b;->d:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iput-object v2, v3, Lf/d;->d:Ljava/lang/CharSequence;

    iget-object v5, v3, Lf/d;->u:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v1, Lf/b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iput-object v2, v3, Lf/d;->s:Landroid/graphics/drawable/Drawable;

    iget-object v5, v3, Lf/d;->t:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v3, Lf/d;->t:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object v2, v1, Lf/b;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    iput-object v2, v3, Lf/d;->e:Ljava/lang/String;

    iget-object v5, v3, Lf/d;->v:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, v1, Lf/b;->g:Ljava/lang/CharSequence;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    iget-object v6, v1, Lf/b;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v5, v2, v6}, Lf/d;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v2, v1, Lf/b;->i:Ljava/lang/CharSequence;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, -0x2

    iget-object v6, v1, Lf/b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v5, v2, v6}, Lf/d;->c(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v2, v1, Lf/b;->m:Ljava/lang/Object;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_a

    iget-object v2, v1, Lf/b;->b:Landroid/view/LayoutInflater;

    iget v7, v3, Lf/d;->A:I

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v7, v1, Lf/b;->p:Z

    if-eqz v7, :cond_6

    iget v7, v3, Lf/d;->B:I

    goto :goto_3

    :cond_6
    iget v7, v3, Lf/d;->C:I

    :goto_3
    iget-object v8, v1, Lf/b;->m:Ljava/lang/Object;

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    new-instance v8, Lf/c;

    iget-object v9, v1, Lf/b;->a:Landroid/view/ContextThemeWrapper;

    const v10, 0x1020014

    invoke-direct {v8, v9, v7, v10, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_4
    iput-object v8, v3, Lf/d;->x:Landroid/widget/ListAdapter;

    iget v7, v1, Lf/b;->q:I

    iput v7, v3, Lf/d;->y:I

    iget-object v7, v1, Lf/b;->n:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v7, :cond_8

    new-instance v7, Lf/a;

    invoke-direct {v7, v1, v3}, Lf/a;-><init>(Lf/b;Lf/d;)V

    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_8
    iget-boolean v7, v1, Lf/b;->p:Z

    if-eqz v7, :cond_9

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_9
    iput-object v2, v3, Lf/d;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_a
    iget-object v2, v1, Lf/b;->o:Landroid/view/View;

    if-eqz v2, :cond_b

    iput-object v2, v3, Lf/d;->g:Landroid/view/View;

    iput-boolean v4, v3, Lf/d;->h:Z

    :cond_b
    iget-boolean v2, v1, Lf/b;->k:Z

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-boolean v2, v1, Lf/b;->k:Z

    if-eqz v2, :cond_c

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_c
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v1, Lf/b;->l:Lj/n;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_d
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lf/e;->a:Lf/b;

    iget-object v0, v0, Lf/b;->a:Landroid/view/ContextThemeWrapper;

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/e;
    .locals 2

    iget-object v0, p0, Lf/e;->a:Lf/b;

    iget-object v1, v0, Lf/b;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/b;->i:Ljava/lang/CharSequence;

    iput-object p2, v0, Lf/b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lf/e;
    .locals 2

    iget-object v0, p0, Lf/e;->a:Lf/b;

    iget-object v1, v0, Lf/b;->a:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lf/b;->g:Ljava/lang/CharSequence;

    iput-object p2, v0, Lf/b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lf/e;
    .locals 1

    iget-object v0, p0, Lf/e;->a:Lf/b;

    iput-object p1, v0, Lf/b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lf/e;
    .locals 1

    iget-object v0, p0, Lf/e;->a:Lf/b;

    iput-object p1, v0, Lf/b;->o:Landroid/view/View;

    return-object p0
.end method
