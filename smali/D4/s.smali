.class public final LD4/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# instance fields
.field public final synthetic b:Lib/player/pages/movie/MoviePlayerActivity;


# direct methods
.method public constructor <init>(Lib/player/pages/movie/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/s;->b:Lib/player/pages/movie/MoviePlayerActivity;

    return-void
.end method


# virtual methods
.method public final onPlaybackStateChanged(I)V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, LD4/s;->b:Lib/player/pages/movie/MoviePlayerActivity;

    if-ne p1, v0, :cond_0

    sget p1, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    invoke-virtual {v1}, Lib/player/pages/movie/MoviePlayerActivity;->C()V

    iget-object p1, v1, Lib/player/pages/movie/MoviePlayerActivity;->B0:Lib/player/models/WordModels;

    invoke-virtual {p1}, Lib/player/models/WordModels;->getMovie_ended()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput p1, v1, Lib/player/pages/movie/MoviePlayerActivity;->q0:I

    iget-object p1, v1, Lib/player/pages/movie/MoviePlayerActivity;->m0:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, v1, Lib/player/pages/movie/MoviePlayerActivity;->n0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget p1, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    iget-object p1, v1, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v1, Lib/player/pages/movie/MoviePlayerActivity;->t0:Landroid/os/Handler;

    iget-object v0, v1, Lib/player/pages/movie/MoviePlayerActivity;->u0:LD4/o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lib/player/pages/movie/MoviePlayerActivity;->A()V

    :cond_2
    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 5

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    const-wide/16 v1, 0x0

    iget-object v3, p0, LD4/s;->b:Lib/player/pages/movie/MoviePlayerActivity;

    if-ne p1, v0, :cond_0

    iget-object p1, v3, Lib/player/pages/movie/MoviePlayerActivity;->m0:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, v3, Lib/player/pages/movie/MoviePlayerActivity;->n0:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lib/player/pages/movie/MoviePlayerActivity;->C()V

    iget-object p1, v3, Lib/player/pages/movie/MoviePlayerActivity;->V:Ljava/lang/String;

    invoke-virtual {v3, v1, v2, p1}, Lib/player/pages/movie/MoviePlayerActivity;->B(JLjava/lang/String;)V

    return-void

    :cond_0
    iget p1, v3, Lib/player/pages/movie/MoviePlayerActivity;->q0:I

    const/4 v0, 0x3

    const/4 v4, 0x1

    if-le p1, v0, :cond_2

    invoke-virtual {v3}, Lib/player/pages/movie/MoviePlayerActivity;->C()V

    invoke-virtual {v3}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v1, "fragment_error"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, v3, Lib/player/pages/movie/MoviePlayerActivity;->B0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getPlay_back_error()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v3, Lib/player/pages/movie/MoviePlayerActivity;->B0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getPlay_back_error_description()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lz4/H;->T(Ljava/lang/String;Ljava/lang/String;Z)Lz4/H;

    move-result-object v0

    new-instance v2, LD4/r;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LD4/r;-><init>(Lib/player/pages/movie/MoviePlayerActivity;I)V

    iput-object v2, v0, Lz4/H;->D0:Lz4/G;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/2addr p1, v4

    iput p1, v3, Lib/player/pages/movie/MoviePlayerActivity;->q0:I

    invoke-virtual {v3}, Lib/player/pages/movie/MoviePlayerActivity;->C()V

    iget-object p1, v3, Lib/player/pages/movie/MoviePlayerActivity;->V:Ljava/lang/String;

    invoke-virtual {v3, v1, v2, p1}, Lib/player/pages/movie/MoviePlayerActivity;->B(JLjava/lang/String;)V

    return-void
.end method
