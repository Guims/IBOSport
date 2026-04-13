.class public final Ls4/w;
.super Lv1/y;


# instance fields
.field public d:Ljava/util/List;

.field public e:I

.field public f:LB4/d;

.field public g:Ljava/lang/String;

.field public h:Z


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Ls4/w;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v1, p0, Ls4/w;->h:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Ls4/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final g(Lv1/X;I)V
    .locals 4

    iget v0, p1, Lv1/X;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    check-cast p1, Ls4/v;

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v1, p1, Ls4/v;->v:Landroid/widget/ImageView;

    iget-object v2, p1, Ls4/v;->u:Landroid/widget/TextView;

    iget-object v3, p0, Ls4/w;->d:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/AppInfoModel$UrlModel;

    invoke-virtual {v3}, Lib/player/models/AppInfoModel$UrlModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Ls4/w;->e:I

    if-ne v2, p2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    new-instance v1, Ls4/t;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Ls4/t;-><init>(Ls4/w;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ls4/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, p1, v2}, Ls4/e;-><init>(Ls4/w;ILv1/X;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_2
    check-cast p1, Ls4/u;

    iget-object v0, p1, Lv1/X;->a:Landroid/view/View;

    iget-object v1, p1, Ls4/u;->u:Landroid/widget/TextView;

    iget-object v2, p0, Ls4/w;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ls4/t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Ls4/t;-><init>(Ls4/w;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ls4/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Ls4/e;-><init>(Ls4/w;ILv1/X;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ls4/u;

    const v1, 0x7f0e00f7

    invoke-static {p1, v1, p1, v0}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ls4/u;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Ls4/v;

    const v1, 0x7f0e00f6

    invoke-static {p1, v1, p1, v0}, Lcom/google/android/material/datepicker/e;->a(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lv1/X;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Ls4/v;->u:Landroid/widget/TextView;

    const v0, 0x7f0b03e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0b01fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Ls4/v;->v:Landroid/widget/ImageView;

    const v0, 0x7f0b01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Ls4/v;->w:Landroid/widget/ImageView;

    return-object p2
.end method
