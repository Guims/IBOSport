.class public abstract Lr1/p;
.super Lv1/y;


# instance fields
.field public d:Ljava/util/List;

.field public final synthetic e:Lr1/r;


# direct methods
.method public constructor <init>(Lr1/r;)V
    .locals 0

    iput-object p1, p0, Lr1/p;->e:Lr1/r;

    invoke-direct {p0}, Lv1/y;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr1/p;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lr1/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lr1/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic g(Lv1/X;I)V
    .locals 0

    check-cast p1, Lr1/l;

    invoke-virtual {p0, p1, p2}, Lr1/p;->k(Lr1/l;I)V

    return-void
.end method

.method public final h(Landroid/view/ViewGroup;I)Lv1/X;
    .locals 2

    iget-object p2, p0, Lr1/p;->e:Lr1/r;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0040

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr1/l;

    invoke-direct {p2, p1}, Lr1/l;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public k(Lr1/l;I)V
    .locals 6

    iget-object v0, p0, Lr1/p;->e:Lr1/r;

    iget-object v0, v0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lr1/p;->l(Lr1/l;)V

    return-void

    :cond_1
    iget-object v1, p0, Lr1/p;->d:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr1/n;

    iget-object v1, p2, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lp3/J;

    invoke-virtual {v3, v1}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p2, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    iget v5, p2, Lr1/n;->b:I

    invoke-virtual {v3, v5}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-object v3, p1, Lr1/l;->u:Landroid/widget/TextView;

    iget-object v5, p2, Lr1/n;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lr1/l;->v:Landroid/view/View;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    new-instance v2, Lr1/o;

    invoke-direct {v2, p0, v0, v1, p2}, Lr1/o;-><init>(Lr1/p;Landroidx/media3/common/Player;Landroidx/media3/common/TrackGroup;Lr1/n;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract l(Lr1/l;)V
.end method

.method public abstract m(Ljava/lang/String;)V
.end method
