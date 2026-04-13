.class public final Lib/player/pages/series/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final synthetic b:Lib/player/pages/series/SeriesMobilePlayerActivity;


# direct methods
.method public constructor <init>(Lib/player/pages/series/SeriesMobilePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib/player/pages/series/n;->b:Lib/player/pages/series/SeriesMobilePlayerActivity;

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(I)V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lib/player/pages/series/n;->b:Lib/player/pages/series/SeriesMobilePlayerActivity;

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    iget p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    iget-object v0, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    iget p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    iget p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-virtual {v1, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->C(I)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    iput p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->v0:I

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget p1, Lib/player/pages/series/SeriesMobilePlayerActivity;->Q0:I

    iget-object p1, v1, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iget-object v0, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->B()V

    :cond_3
    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 5

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    iget-object v1, p0, Lib/player/pages/series/n;->b:Lib/player/pages/series/SeriesMobilePlayerActivity;

    if-ne p1, v0, :cond_0

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    iget-object p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->s0:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->z(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->u0:J

    iget-object p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->D(JLjava/lang/String;)V

    return-void

    :cond_0
    iget p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->v0:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    invoke-virtual {v1}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v2, "fragment_error"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    invoke-static {v0, v3, p1, v4}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPlay_back_error()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getPlay_back_error_description()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lz4/H;->T(Ljava/lang/String;Ljava/lang/String;Z)Lz4/H;

    move-result-object v0

    new-instance v3, Lib/player/pages/series/l;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Lib/player/pages/series/l;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    iput-object v3, v0, Lz4/H;->D0:Lz4/G;

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->v0:I

    invoke-virtual {v1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    iget-object p1, v1, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->D(JLjava/lang/String;)V

    return-void
.end method
