.class public final Lr1/e;
.super Lr1/p;


# instance fields
.field public final synthetic f:Lr1/r;


# direct methods
.method public constructor <init>(Lr1/r;)V
    .locals 0

    iput-object p1, p0, Lr1/e;->f:Lr1/r;

    invoke-direct {p0, p1}, Lr1/p;-><init>(Lr1/r;)V

    return-void
.end method


# virtual methods
.method public final l(Lr1/l;)V
    .locals 2

    iget-object v0, p1, Lr1/l;->u:Landroid/widget/TextView;

    const v1, 0x7f130077

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lr1/e;->f:Lr1/r;

    iget-object v0, v0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr1/e;->n(Landroidx/media3/common/TrackSelectionParameters;)Z

    move-result v0

    iget-object v1, p1, Lr1/l;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lv1/X;->a:Landroid/view/View;

    new-instance v0, LB4/u;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr1/e;->f:Lr1/r;

    iget-object v0, v0, Lr1/r;->u:Lib/player/pages/e;

    iget-object v0, v0, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public final n(Landroidx/media3/common/TrackSelectionParameters;)Z
    .locals 4

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

    iget-object v2, v2, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v2

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lp3/J;

    invoke-virtual {v3, v2}, Lp3/J;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
