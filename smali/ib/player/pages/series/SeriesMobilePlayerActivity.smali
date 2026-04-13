.class public Lib/player/pages/series/SeriesMobilePlayerActivity;
.super Lib/player/base/l;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lt4/f;
.implements Lt4/g;


# static fields
.field public static final synthetic Q0:I


# instance fields
.field public A0:Ljava/util/List;

.field public final B0:Landroid/os/Handler;

.field public C0:LB4/l;

.field public D0:Lz4/n;

.field public E0:Lz4/n;

.field public F0:Lz4/z;

.field public G0:Lz4/k;

.field public H0:I

.field public I0:I

.field public J0:Ljava/lang/String;

.field public K0:Ljava/lang/String;

.field public L0:Ljava/lang/String;

.field public M0:Ljava/lang/String;

.field public N0:Ljava/lang/String;

.field public O0:I

.field public final P0:LA4/f;

.field public U:Landroid/widget/ImageButton;

.field public V:Landroid/widget/ImageButton;

.field public W:Landroid/widget/ImageButton;

.field public X:Landroid/widget/ImageButton;

.field public Y:Landroid/widget/ImageButton;

.field public Z:Landroid/widget/ImageButton;

.field public a0:Landroid/widget/ImageButton;

.field public b0:Landroid/widget/ImageButton;

.field public c0:Landroid/widget/ImageButton;

.field public d0:Landroid/widget/TextView;

.field public e0:Landroid/widget/TextView;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/view/View;

.field public h0:Landroid/widget/SeekBar;

.field public i0:Landroid/widget/SeekBar;

.field public j0:Landroid/widget/SeekBar;

.field public k0:Landroid/media/AudioManager;

.field public l0:I

.field public m0:Lib/player/base/helper/w;

.field public n0:Lib/player/models/WordModels;

.field public o0:Ljava/lang/String;

.field public p0:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r0:Ljava/lang/String;

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:J

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:I

.field public z0:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lf/i;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    const-string v0, ""

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->t0:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->u0:J

    const/4 v1, 0x0

    iput v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->v0:I

    iput v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    iput-boolean v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->z0:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iput v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->H0:I

    iput v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->I0:I

    const-string v1, "1920x1080"

    iput-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->J0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->K0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->L0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->M0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->N0:Ljava/lang/String;

    new-instance v0, LA4/f;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->P0:LA4/f;

    return-void
.end method


# virtual methods
.method public final A(I)Ljava/util/ArrayList;
    .locals 10

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lib/player/models/TrackInfoObj;

    const/4 v3, 0x1

    iget-object v4, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    if-eq p1, v3, :cond_0

    invoke-virtual {v4}, Lib/player/models/WordModels;->getStringDefault()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lib/player/models/WordModels;->getStringDefaultAlt()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "Default"

    const-string v6, "default"

    invoke-direct {v2, v6, v4, v5}, Lib/player/models/TrackInfoObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v4}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v5

    if-ne v5, p1, :cond_1

    move v5, v2

    :goto_1
    iget v6, v4, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    new-instance v7, Lib/player/models/TrackInfoObj;

    iget-object v8, v6, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const/4 v9, 0x3

    if-ne p1, v9, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move v9, v2

    :goto_2
    invoke-static {v8, v9}, Lv4/c;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v6, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v6}, Lib/player/models/TrackInfoObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public final B()V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->O0:I

    new-instance v0, LB4/l;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {v0}, LB4/l;->run()V

    return-void
.end method

.method public final C(I)V
    .locals 6

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->h0:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EpisodeModel;

    invoke-virtual {v0}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->o0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->q0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->r0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->s0:Ljava/lang/String;

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->f0:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EpisodeModel;

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/EpisodeModel;

    invoke-virtual {v4}, Lib/player/models/EpisodeModel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EpisodeModel;

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getContainer_extension()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, v3, v4, p1}, Lib/player/base/helper/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->s0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->z(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->u0:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/K;)V

    const-string v2, "fragment_resume"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getResume()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getResume_plyaback_from_ast_position()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->D0:Lz4/n;

    new-instance v1, Lib/player/pages/series/l;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lib/player/pages/series/l;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    iput-object v1, v0, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->D(JLjava/lang/String;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesMobilePlayerActivity;->B()V

    return-void
.end method

.method public final D(JLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->P0:LA4/f;

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    :try_start_0
    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lk0/C;->I(Landroid/net/Uri;)I

    move-result v2

    invoke-static {v2}, Lk0/C;->o(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p3

    new-instance v4, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v4}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p3

    new-instance v2, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v2, p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v2

    new-instance v3, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lu0/h;

    invoke-direct {v5}, Lu0/h;-><init>()V

    iget-object v6, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->F()Z

    move-result v6

    invoke-static {p0, v6}, Lv4/a;->d(Landroid/content/Context;Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v6

    iput-object v6, v5, Lu0/h;->d:Landroidx/media3/datasource/HttpDataSource$Factory;

    iget-object v6, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->F()Z

    move-result v6

    invoke-static {p0, v6}, Lv4/a;->b(Landroid/content/Context;Z)Landroidx/media3/datasource/DataSource$Factory;

    move-result-object v6

    new-instance v7, Landroidx/media3/exoplayer/source/r;

    invoke-direct {v7, p0}, Landroidx/media3/exoplayer/source/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroidx/media3/exoplayer/source/r;->f(Landroidx/media3/datasource/DataSource$Factory;)V

    invoke-virtual {v7, v5}, Landroidx/media3/exoplayer/source/r;->g(Lu0/r;)Landroidx/media3/exoplayer/source/r;

    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/D;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v3

    invoke-static {p0, v4}, Lv4/a;->a(Landroid/content/Context;Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    iput-object v3, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3, v2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v3, Lib/player/pages/series/n;

    invoke-direct {v3, p0}, Lib/player/pages/series/n;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;)V

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v3, Lib/player/pages/series/m;

    invoke-direct {v3, p0}, Lib/player/pages/series/m;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/ExoPlayer;->addAnalyticsListener(Lq0/c;)V

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    sget-object v3, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    invoke-interface {v2, v3, v4}, Landroidx/media3/common/Player;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2, v4}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v2, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    iget-object v3, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2, p3}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object p3, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p3}, Landroidx/media3/common/Player;->prepare()V

    iget-object p3, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p3}, Landroidx/media3/common/Player;->play()V

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p3, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x64

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final E()V
    .locals 5

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->s0:Ljava/lang/String;

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->V()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/ResumeModel;

    invoke-virtual {v2}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Lib/player/models/ResumeModel;

    invoke-direct {v0}, Lib/player/models/ResumeModel;-><init>()V

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->N0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lib/player/models/ResumeModel;->setStream_id(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->s0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lib/player/models/ResumeModel;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lib/player/models/ResumeModel;->setLast_position(J)V

    iget-object v1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-object v3, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lib/player/models/ResumeModel;->setPro(I)V

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->V()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->u0:J

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v0, v1}, Lib/player/base/helper/w;->t0(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    :cond_3
    return-void
.end method

.method public final F(Ljava/util/ArrayList;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lib/player/models/SubtitleModel$DataModel;

    invoke-virtual {v5}, Lib/player/models/SubtitleModel$DataModel;->getAttributesModel()Lib/player/models/SubtitleModel$AttributesModel;

    move-result-object v5

    invoke-virtual {v5}, Lib/player/models/SubtitleModel$AttributesModel;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lv4/c;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v1

    invoke-static {v1, v1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v3

    const-string v5, "fragment_subtitle"

    invoke-virtual {v1, v5}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 p1, 0x0

    invoke-static {v3, v6, p1, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget v2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->H0:I

    new-instance v3, LD0/f;

    const/16 v6, 0x9

    invoke-direct {v3, p0, v6, p1}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p0, v0, v2, v4, v3}, Lz4/N;->T(Landroid/content/Context;Ljava/util/ArrayList;IZLz4/M;)Lz4/N;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final G(Ljava/util/ArrayList;Z)V
    .locals 6

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v0

    invoke-static {v0, v0}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v1

    const-string v2, "fragment_subtitle"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {v1, v3, p1, p2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-static {p1}, Lv4/c;->l(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p2, :cond_1

    iget v3, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->H0:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->I0:I

    :goto_0
    new-instance v4, LB4/k;

    const/4 v5, 0x3

    invoke-direct {v4, p0, p2, p1, v5}, LB4/k;-><init>(Ljava/lang/Object;ZLjava/util/ArrayList;I)V

    invoke-static {p0, v1, v3, p2, v4}, Lz4/N;->T(Landroid/content/Context;Ljava/util/ArrayList;IZLz4/M;)Lz4/N;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Lcom/google/gson/j;

    invoke-direct {v1}, Lcom/google/gson/j;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lib/player/models/SubtitleModel;

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleModel;

    invoke-virtual {p1}, Lib/player/models/SubtitleModel;->getDataModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lib/player/models/SubtitleModel;->getDataModels()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lib/player/base/helper/d;->h(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->F(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getNo_subtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-static {v1, p1, v0}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-static {v1, p1, v0}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lf/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final g(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/gson/j;

    invoke-direct {v0}, Lcom/google/gson/j;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lib/player/models/SubtitleLinkModel;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/SubtitleLinkModel;

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lib/player/base/view/SubtitleView;->setPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    iget-object v0, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    invoke-virtual {p1}, Lib/player/models/SubtitleLinkModel;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lib/player/base/view/SubtitleView;->setSubSource(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b00a5

    const-wide/16 v3, 0x64

    iget-object v5, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->P0:LA4/f;

    const-wide/16 v6, 0x3e8

    iget-object v8, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    const/4 v9, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lib/player/pages/series/SeriesMobilePlayerActivity;->B()V

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    iget v10, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    add-int/lit8 v10, v10, 0xa

    iput v10, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    int-to-long v10, v10

    mul-long/2addr v10, v6

    cmp-long v6, v1, v10

    if-gez v6, :cond_0

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v6, 0x1

    invoke-interface {v1, v6, v7}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_0

    :cond_0
    sub-long/2addr v1, v10

    iget-object v6, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v6, v1, v2}, Landroidx/media3/common/Player;->seekTo(J)V

    :goto_0
    iput v9, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    invoke-virtual {v8, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const v2, 0x7f0b0093

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->C0:LB4/l;

    invoke-virtual {v8, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lib/player/pages/series/SeriesMobilePlayerActivity;->B()V

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    iget-object v10, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v10}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v10

    iget v12, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    add-int/lit8 v12, v12, 0xa

    iput v12, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    int-to-long v12, v12

    mul-long/2addr v12, v6

    cmp-long v6, v10, v12

    if-gez v6, :cond_2

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v6, 0xa

    sub-long/2addr v10, v6

    invoke-interface {v1, v10, v11}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    add-long/2addr v12, v1

    invoke-interface {v6, v12, v13}, Landroidx/media3/common/Player;->seekTo(J)V

    :goto_1
    iput v9, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->w0:I

    invoke-virtual {v8, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const v2, 0x7f0b009f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v9}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->V:Landroid/widget/ImageButton;

    const v2, 0x7f080155

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v3}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->V:Landroid/widget/ImageButton;

    const v2, 0x7f080153

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_5
    const v2, 0x7f0b008b

    if-ne v1, v2, :cond_7

    invoke-virtual {v0, v3}, Lib/player/pages/series/SeriesMobilePlayerActivity;->A(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    invoke-virtual {v0, v1, v9}, Lib/player/pages/series/SeriesMobilePlayerActivity;->G(Ljava/util/ArrayList;Z)V

    return-void

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    const v2, 0x7f0b00a6

    const/4 v4, 0x3

    if-ne v1, v2, :cond_a

    invoke-virtual {v0, v4}, Lib/player/pages/series/SeriesMobilePlayerActivity;->A(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_8

    invoke-virtual {v0, v1, v3}, Lib/player/pages/series/SeriesMobilePlayerActivity;->G(Ljava/util/ArrayList;Z)V

    return-void

    :cond_8
    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->t0:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Lcom/bumptech/glide/f;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Lcom/bumptech/glide/f;-><init>(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lib/player/base/n;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->t0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&season_number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    iget v4, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/EpisodeModel;

    invoke-virtual {v3}, Lib/player/models/EpisodeModel;->getSeason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&episode_number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    iget v4, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lib/player/models/EpisodeModel;

    invoke-virtual {v3}, Lib/player/models/EpisodeModel;->getEpisode_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lib/player/base/n;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/f;->N(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    return-void

    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-static {v2, v1, v3}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void

    :cond_a
    const v2, 0x7f0b00a3

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->getResizeMode()I

    move-result v1

    if-ne v1, v4, :cond_b

    iget-object v1, v0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v9}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    return-void

    :cond_b
    iget-object v1, v0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v4}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    return-void

    :cond_c
    const v2, 0x7f0b0097

    const/4 v3, 0x0

    if-ne v1, v2, :cond_12

    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->F0:Lz4/z;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroidx/fragment/app/t;->p()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->F0:Lz4/z;

    invoke-virtual {v1, v9, v9}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :cond_e
    :goto_2
    iget-object v1, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    iget v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EpisodeModel;

    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->B()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v12, v2

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v2

    invoke-virtual {v2}, Lib/player/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_10
    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :goto_4
    iget-object v10, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->o0:Ljava/lang/String;

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v1

    invoke-virtual {v1}, Lib/player/models/EpisodeInfoModel;->getPlot()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->J0:Ljava/lang/String;

    invoke-virtual {v0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v1

    invoke-static {v1, v1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v2

    const-string v4, "fragment_info"

    invoke-virtual {v1, v4}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-static {v2, v5, v3, v9}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_11
    iget-object v14, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->M0:Ljava/lang/String;

    iget-object v15, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->K0:Ljava/lang/String;

    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->L0:Ljava/lang/String;

    move-object/from16 v16, v2

    invoke-static/range {v10 .. v16}, Lz4/z;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/z;

    move-result-object v2

    iput-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->F0:Lz4/z;

    invoke-virtual {v2, v1, v4}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_12
    const v2, 0x7f0b0091

    if-ne v1, v2, :cond_14

    invoke-virtual {v0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v1

    invoke-static {v1, v1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v2

    const-string v4, "episode_group"

    invoke-virtual {v1, v4}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-static {v2, v5, v3, v9}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_13
    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    iget v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->y0:I

    iget v5, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    new-instance v6, Lz4/k;

    invoke-direct {v6}, Lz4/k;-><init>()V

    iput-object v2, v6, Lz4/k;->E0:Ljava/util/List;

    iput v3, v6, Lz4/k;->F0:I

    iput v5, v6, Lz4/k;->G0:I

    iput-object v6, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->G0:Lz4/k;

    new-instance v2, Lib/player/pages/series/l;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lib/player/pages/series/l;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    iput-object v2, v6, Lz4/k;->I0:Lib/player/pages/series/l;

    invoke-virtual {v6, v1, v4}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_14
    const v2, 0x7f0b008c

    if-ne v1, v2, :cond_16

    invoke-virtual {v0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object v1

    invoke-static {v1, v1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v2

    const-string v4, "fragment_exit"

    invoke-virtual {v1, v4}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-static {v2, v5, v3, v9}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_15
    iget-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v2}, Lib/player/models/WordModels;->getStop_playback()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getPlayback_description()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v5}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    invoke-virtual {v6}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v5, v6}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v2

    iput-object v2, v0, Lib/player/pages/series/SeriesMobilePlayerActivity;->E0:Lz4/n;

    new-instance v3, Lib/player/pages/series/l;

    const/4 v5, 0x1

    invoke-direct {v3, v0, v5}, Lib/player/pages/series/l;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    iput-object v3, v2, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v2, v1, v4}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lib/player/base/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0022

    invoke-virtual {p0, p1}, Lf/i;->setContentView(I)V

    invoke-static {p0}, Lv4/c;->a(Lf/i;)V

    new-instance p1, Lib/player/base/helper/w;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-static {p0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->n0:Lib/player/models/WordModels;

    const p1, 0x7f0b0422

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object p1, p0, Lib/player/base/l;->P:Landroidx/media3/ui/AspectRatioFrameLayout;

    const p1, 0x7f0b02fe

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/media3/ui/PlayerView;

    iput-object p1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/ui/SubtitleView;->setApplyEmbeddedStyles(Z)V

    const p1, 0x7f0b038a

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lib/player/base/view/SubtitleView;

    iput-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lr1/c;

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->X()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lr1/c;-><init>(IIIIILandroid/graphics/Typeface;)V

    iget-object p1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/ui/SubtitleView;->setStyle(Lr1/c;)V

    iget-object p1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Z()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/media3/ui/SubtitleView;->a(F)V

    iget-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Z()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lk/Y;->setTextSize(IF)V

    iget-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0b0255

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0b008c

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->b0:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a5

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->U:Landroid/widget/ImageButton;

    const p1, 0x7f0b009f

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->V:Landroid/widget/ImageButton;

    const p1, 0x7f0b0093

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->W:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a6

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->X:Landroid/widget/ImageButton;

    const p1, 0x7f0b0097

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->Y:Landroid/widget/ImageButton;

    const p1, 0x7f0b008b

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->Z:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a3

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->a0:Landroid/widget/ImageButton;

    const p1, 0x7f0b0091

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->c0:Landroid/widget/ImageButton;

    const p1, 0x7f0b0404

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->d0:Landroid/widget/TextView;

    const p1, 0x7f0b03e2

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->e0:Landroid/widget/TextView;

    const p1, 0x7f0b03f2

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->f0:Landroid/widget/TextView;

    const p1, 0x7f0b033e

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->h0:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const p1, 0x7f0b009e

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v3, Lib/player/pages/series/k;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lib/player/pages/series/k;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->h0:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->b0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->Y:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->Z:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->c0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->a0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0424

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->g0:Landroid/view/View;

    new-instance v3, Lib/player/pages/series/k;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lib/player/pages/series/k;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerView;->getVideoSurfaceView()Landroid/view/View;

    move-result-object p1

    new-instance v3, Lib/player/pages/series/k;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lib/player/pages/series/k;-><init>(Lib/player/pages/series/SeriesMobilePlayerActivity;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0432

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->j0:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->k0:Landroid/media/AudioManager;

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->j0:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->k0:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->l0:I

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->k0:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iget v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->l0:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->j0:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const p1, 0x7f0b007f

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->i0:Landroid/widget/SeekBar;

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "screen_brightness"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->i0:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->i0:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "stream_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->N0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "season_pos"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->y0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "series_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->q0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "season_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->r0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "tmdb_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->t0:Ljava/lang/String;

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v3, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->q0:Ljava/lang/String;

    iget-object v4, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->r0:Ljava/lang/String;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Lio/realm/y;

    const-class v5, Lib/player/models/EpisodeModel;

    invoke-virtual {p1, v5}, Lio/realm/y;->G(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Lio/realm/RealmQuery;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/realm/RealmQuery;->f()Lio/realm/T;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->q0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lib/player/base/helper/w;->s(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/Season;

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->y()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->A0:Ljava/util/List;

    :cond_1
    :goto_0
    iget p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->x0:I

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesMobilePlayerActivity;->C(I)V

    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b033e

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->P0:LA4/f;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x64

    div-long/2addr v0, p1

    long-to-int p1, v0

    iget-object p2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-long v0, p1

    invoke-interface {p2, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->d0:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v2}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const p1, 0x7f0b0432

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->k0:Landroid/media/AudioManager;

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x64

    iget-object p2, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->k0:Landroid/media/AudioManager;

    invoke-virtual {p2, p3, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void

    :cond_1
    const p1, 0x7f0b007f

    if-ne v0, p1, :cond_3

    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->z0:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->z0:Z

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "package:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness_mode"

    invoke-static {p1, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "screen_brightness"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    iput p2, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lf/i;->onResume()V

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->p0:Ljava/lang/String;

    iget-wide v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->u0:J

    invoke-virtual {p0, v1, v2, v0}, Lib/player/pages/series/SeriesMobilePlayerActivity;->D(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lf/i;->onStop()V

    iget-object v0, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->f()V

    :cond_0
    invoke-virtual {p0}, Lib/player/pages/series/SeriesMobilePlayerActivity;->E()V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b033e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->B0:Landroid/os/Handler;

    iget-object v1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->P0:LA4/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1, v0, v1}, Lv4/c;->x(IJ)I

    move-result p1

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/Player;->seekTo(J)V

    iget-object p1, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->d0:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0, v0}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final y(Lib/player/models/TrackInfoObj;I)V
    .locals 7

    const/4 v0, 0x3

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :cond_0
    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :cond_1
    iget-object v1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {v2, v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v0

    invoke-virtual {v0, v3}, Lp3/H;->l(I)Lp3/F;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lp3/F;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v4

    if-ne v4, p2, :cond_3

    move v4, v3

    :goto_1
    iget v5, v1, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v4}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lib/player/models/TrackInfoObj;->getLangCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroidx/media3/common/TrackSelectionOverride;

    invoke-virtual {v1}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;I)V

    invoke-virtual {v2, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final z(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lib/player/pages/series/SeriesMobilePlayerActivity;->m0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->V()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lib/player/models/ResumeModel;

    invoke-virtual {v2}, Lib/player/models/ResumeModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/ResumeModel;

    invoke-virtual {p1}, Lib/player/models/ResumeModel;->getLast_position()J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method
