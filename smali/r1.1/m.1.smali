.class public final Lr1/m;
.super Lr1/p;


# instance fields
.field public final synthetic f:Lr1/r;


# direct methods
.method public constructor <init>(Lr1/r;)V
    .locals 0

    iput-object p1, p0, Lr1/m;->f:Lr1/r;

    invoke-direct {p0, p1}, Lr1/p;-><init>(Lr1/r;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic g(Lv1/X;I)V
    .locals 0

    check-cast p1, Lr1/l;

    invoke-virtual {p0, p1, p2}, Lr1/m;->k(Lr1/l;I)V

    return-void
.end method

.method public final k(Lr1/l;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lr1/p;->k(Lr1/l;I)V

    if-lez p2, :cond_1

    iget-object v0, p0, Lr1/p;->d:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr1/n;

    iget-object p1, p1, Lr1/l;->v:Landroid/view/View;

    iget-object v0, p2, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    iget p2, p2, Lr1/n;->b:I

    invoke-virtual {v0, p2}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final l(Lr1/l;)V
    .locals 4

    iget-object v0, p1, Lr1/l;->u:Landroid/widget/TextView;

    const v1, 0x7f130078

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lr1/p;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lr1/p;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr1/n;

    iget-object v3, v2, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    iget v2, v2, Lr1/n;->b:I

    invoke-virtual {v3, v2}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p1, Lr1/l;->v:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    new-instance v0, LB4/u;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lr1/m;->f:Lr1/r;

    iget-object v1, v0, Lr1/r;->L:Landroid/widget/ImageView;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object v4, p1

    check-cast v4, Lp3/Y;

    iget v4, v4, Lp3/Y;->s:I

    if-ge v3, v4, :cond_1

    move-object v4, p1

    check-cast v4, Lp3/Y;

    invoke-virtual {v4, v3}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr1/n;

    iget-object v5, v4, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    iget v4, v4, Lr1/n;->b:I

    invoke-virtual {v5, v4}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    iget-object v3, v0, Lr1/r;->q0:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lr1/r;->r0:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_3

    iget-object v0, v0, Lr1/r;->s0:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lr1/r;->t0:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Lr1/p;->d:Ljava/util/List;

    return-void
.end method
