.class public final Lr1/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lr1/q;
.implements Lr1/g;


# instance fields
.field public final b:Landroidx/media3/common/Timeline$Period;

.field public q:Ljava/lang/Object;

.field public final synthetic r:Landroidx/media3/ui/PlayerView;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/PlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lr1/y;->b:Landroidx/media3/common/Timeline$Period;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->W:I

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->j()V

    return-void
.end method

.method public final onCues(Lj0/c;)V
    .locals 1

    iget-object v0, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    iget-object v0, v0, Landroidx/media3/ui/PlayerView;->x:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lj0/c;->a:Lp3/H;

    invoke-virtual {v0, p1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->W:I

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->l()V

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Landroidx/media3/ui/PlayerView;->T:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr1/r;->f()V

    :cond_0
    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 1

    sget p1, Landroidx/media3/ui/PlayerView;->W:I

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->l()V

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->n()V

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroidx/media3/ui/PlayerView;->T:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr1/r;->f()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return-void
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    sget p1, Landroidx/media3/ui/PlayerView;->W:I

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p1, Landroidx/media3/ui/PlayerView;->T:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lr1/r;->f()V

    :cond_0
    return-void
.end method

.method public final onRenderedFirstFrame()V
    .locals 3

    iget-object v0, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    iget-object v1, v0, Landroidx/media3/ui/PlayerView;->r:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->c()V

    :cond_1
    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 4

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    iget-object p2, p1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/media3/ui/PlayerView;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media3/ui/PlayerView;->u:Lcom/bumptech/glide/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/media3/ui/PlayerView;->D:Landroid/os/Handler;

    check-cast p2, Landroid/view/SurfaceView;

    new-instance v2, LB4/l;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, p1}, LB4/l;-><init>(ILjava/lang/Object;)V

    new-instance p1, LG0/n;

    const/4 v3, 0x7

    invoke-direct {p1, v0, p2, v2, v3}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 6

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    iget-object v0, p1, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iput-object v3, p0, Lr1/y;->q:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/16 v2, 0x1e

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    iget-object v4, p0, Lr1/y;->b:Landroidx/media3/common/Timeline$Period;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Tracks;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v4, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lr1/y;->q:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lr1/y;->q:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    iput-object v3, p0, Lr1/y;->q:Ljava/lang/Object;

    :cond_4
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->o(Z)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2

    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lr1/y;->r:Landroidx/media3/ui/PlayerView;

    iget-object v0, p1, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->k()V

    :cond_1
    :goto_0
    return-void
.end method
