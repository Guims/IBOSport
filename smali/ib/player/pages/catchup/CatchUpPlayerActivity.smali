.class public Lib/player/pages/catchup/CatchUpPlayerActivity;
.super Lf/i;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final synthetic s0:I


# instance fields
.field public N:Landroidx/media3/exoplayer/ExoPlayer;

.field public O:Landroidx/media3/ui/PlayerView;

.field public P:Landroidx/media3/common/TrackSelectionParameters;

.field public Q:Landroidx/media3/datasource/DataSource$Factory;

.field public R:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public S:Landroid/widget/ImageButton;

.field public T:Landroid/widget/ImageButton;

.field public U:Landroid/widget/ImageButton;

.field public V:Landroid/widget/ImageButton;

.field public W:Landroid/widget/ImageButton;

.field public X:Landroid/widget/ImageButton;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public a0:Landroid/widget/TextView;

.field public b0:Landroid/widget/ImageView;

.field public c0:Landroid/widget/ImageView;

.field public d0:Landroid/widget/SeekBar;

.field public e0:I

.field public final f0:Landroid/os/Handler;

.field public g0:LB4/l;

.field public h0:Ljava/util/List;

.field public i0:Lib/player/models/CatchUpEpg;

.field public j0:I

.field public k0:I

.field public l0:Ljava/lang/String;

.field public m0:Ljava/lang/String;

.field public n0:Lz4/n;

.field public o0:Lib/player/base/helper/w;

.field public p0:Lib/player/models/WordModels;

.field public q0:I

.field public final r0:LA4/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lf/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iput v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    iput v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->k0:I

    const-string v0, ""

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->l0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->m0:Ljava/lang/String;

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->p0:Lib/player/models/WordModels;

    new-instance v0, LA4/f;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 8

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v2

    iget v4, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    add-int/2addr v4, p1

    iput v4, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v0, 0x1e

    sub-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    add-long/2addr v4, v0

    invoke-interface {p1, v4, v5}, Landroidx/media3/common/Player;->seekTo(J)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final B(I)V
    .locals 6

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    add-int/2addr v2, p1

    iput v2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->e0:I

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final C()V
    .locals 6

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_exit"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getStop_playback()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getPlayback_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v5}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v1

    iput-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->n0:Lz4/n;

    new-instance v3, Lib/player/pages/catchup/g;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lib/player/pages/catchup/g;-><init>(Lib/player/pages/catchup/CatchUpPlayerActivity;I)V

    iput-object v3, v1, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_9

    const/16 v1, 0x55

    if-eq v0, v1, :cond_7

    const/16 v1, 0x59

    const/16 v5, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    return v4

    :pswitch_1
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    return v4

    :cond_0
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_1
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :pswitch_2
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->T:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_3
    :goto_0
    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_4
    :pswitch_3
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lib/player/pages/catchup/CatchUpPlayerActivity;->A(I)V

    goto :goto_1

    :cond_5
    :pswitch_4
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->c0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lib/player/pages/catchup/CatchUpPlayerActivity;->B(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b

    return v4

    :cond_7
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v4

    :cond_a
    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->C()V

    return v3

    :cond_b
    :goto_1
    invoke-super {p0, p1}, Lf/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b00a5

    const/16 v1, 0xa

    iget-object v2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    invoke-virtual {p0, v1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->B(I)V

    return-void

    :cond_0
    const v0, 0x7f0b0093

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    invoke-virtual {p0, v1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->A(I)V

    return-void

    :cond_1
    const v0, 0x7f0b009f

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    const v0, 0x7f080155

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_3
    const v0, 0x7f0b009b

    if-ne p1, v0, :cond_4

    iget p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->h0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    iget p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    add-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    invoke-virtual {p0, p1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->x(I)V

    return-void

    :cond_4
    const v0, 0x7f0b00a1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    if-lez p1, :cond_6

    sub-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    invoke-virtual {p0, p1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->x(I)V

    return-void

    :cond_5
    const v0, 0x7f0b008c

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->C()V

    :cond_6
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lf/i;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lf/i;->setContentView(I)V

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {}, Lib/player/base/l;->w()V

    invoke-static {p0}, Lv4/c;->a(Lf/i;)V

    new-instance v0, Lib/player/base/helper/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-static {p0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->p0:Lib/player/models/WordModels;

    const v0, 0x7f0b0422

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/AspectRatioFrameLayout;

    const v0, 0x7f0b02fe

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/PlayerView;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->O:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    const v0, 0x7f0b0255

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->X:Landroid/widget/ImageButton;

    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->S:Landroid/widget/ImageButton;

    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->T:Landroid/widget/ImageButton;

    const v0, 0x7f0b009f

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->V:Landroid/widget/ImageButton;

    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->W:Landroid/widget/ImageButton;

    const v0, 0x7f0b03f2

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->a0:Landroid/widget/TextView;

    const v0, 0x7f0b0404

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Y:Landroid/widget/TextView;

    const v0, 0x7f0b03e2

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Z:Landroid/widget/TextView;

    const v0, 0x7f0b033e

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    const v0, 0x7f0b01e4

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->b0:Landroid/widget/ImageView;

    const v0, 0x7f0b01ef

    invoke-virtual {p0, v0}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->c0:Landroid/widget/ImageView;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->d0:Landroid/widget/SeekBar;

    new-instance v1, LD4/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LD4/p;-><init>(Lf/i;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->T:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->T:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->S:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object v0

    new-instance v1, LB4/u;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->F()Z

    move-result v0

    invoke-static {p0, v0}, Lv4/a;->b(Landroid/content/Context;Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Q:Landroidx/media3/datasource/DataSource$Factory;

    if-eqz p1, :cond_0

    const-string v0, "track_selection_parameters"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->P:Landroidx/media3/common/TrackSelectionParameters;

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {p1, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->P:Landroidx/media3/common/TrackSelectionParameters;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "stream_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->m0:Ljava/lang/String;

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1}, Lcom/google/gson/j;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "epg_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lib/player/pages/catchup/f;

    invoke-direct {v1}, Lp4/a;-><init>()V

    iget-object v1, v1, Lp4/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/j;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->h0:Ljava/util/List;

    iget p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->j0:I

    invoke-virtual {p0, p1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->x(I)V

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object p2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    :cond_0
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x64

    div-long/2addr v0, p1

    long-to-int p1, v0

    iget-object p2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Y:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-static {v0, v1, p2, p2}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lf/i;->onResume()V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->l0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->l0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->y(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b033e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1, v0, v1}, Lv4/c;->x(IJ)I

    move-result p1

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/Player;->seekTo(J)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Y:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0, v0}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->q0:I

    new-instance v0, LB4/l;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->g0:LB4/l;

    invoke-virtual {v0}, LB4/l;->run()V

    return-void
.end method

.method public final x(I)V
    .locals 4

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->h0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/CatchUpEpg;

    iput-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->i0:Lib/player/models/CatchUpEpg;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->a0:Landroid/widget/TextView;

    invoke-virtual {p1}, Lib/player/models/CatchUpEpg;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv4/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->i0:Lib/player/models/CatchUpEpg;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->m0:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lib/player/models/CatchUpEpg;->getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->l0:Ljava/lang/String;

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->z()V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->l0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lib/player/pages/catchup/CatchUpPlayerActivity;->y(Ljava/lang/String;)V

    invoke-virtual {p0}, Lib/player/pages/catchup/CatchUpPlayerActivity;->w()V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lk0/C;->I(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Lk0/C;->o(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    new-instance v2, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lu0/h;

    invoke-direct {v1}, Lu0/h;-><init>()V

    iget-object v2, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->F()Z

    move-result v2

    invoke-static {p0, v2}, Lv4/a;->d(Landroid/content/Context;Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v2

    iput-object v2, v1, Lu0/h;->d:Landroidx/media3/datasource/HttpDataSource$Factory;

    new-instance v2, Landroidx/media3/exoplayer/source/r;

    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/source/r;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->Q:Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/r;->f(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/r;->g(Lu0/r;)Landroidx/media3/exoplayer/source/r;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lv4/a;->a(Landroid/content/Context;Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->P:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v1, Lib/player/pages/catchup/h;

    invoke-direct {v1, p0}, Lib/player/pages/catchup/h;-><init>(Lib/player/pages/catchup/CatchUpPlayerActivity;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    sget-object v1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/Player;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->O:Landroidx/media3/ui/PlayerView;

    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->prepare()V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->play()V

    iget-object p1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->f0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->r0:LA4/f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final z()V
    .locals 2

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    iget-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->N:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Lib/player/pages/catchup/CatchUpPlayerActivity;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    return-void
.end method
