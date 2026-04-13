.class public Lib/player/pages/series/SeriesPlayerActivity;
.super Lib/player/base/l;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lt4/f;
.implements Lt4/g;


# static fields
.field public static final synthetic V0:I


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:Ljava/util/List;

.field public final G0:Landroid/os/Handler;

.field public H0:Lib/player/pages/series/o;

.field public I0:Lib/player/pages/series/o;

.field public J0:Lz4/n;

.field public K0:Lz4/n;

.field public L0:Lz4/z;

.field public M0:Ls4/l;

.field public N0:I

.field public O0:I

.field public P0:Ljava/lang/String;

.field public Q0:Ljava/lang/String;

.field public R0:Ljava/lang/String;

.field public S0:Ljava/lang/String;

.field public T0:Ljava/lang/String;

.field public U:Landroid/widget/ImageButton;

.field public final U0:LA4/f;

.field public V:Landroid/widget/ImageButton;

.field public W:Landroid/widget/ImageButton;

.field public X:Landroid/widget/ImageButton;

.field public Y:Landroid/widget/ImageButton;

.field public Z:Landroid/widget/ImageButton;

.field public a0:Landroid/widget/ImageButton;

.field public b0:Landroid/widget/ImageButton;

.field public c0:Landroid/widget/ImageButton;

.field public d0:Landroid/widget/ImageButton;

.field public e0:Landroid/widget/ImageButton;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/TextView;

.field public h0:Landroid/widget/TextView;

.field public i0:Landroid/widget/TextView;

.field public j0:Landroid/widget/ImageView;

.field public k0:Landroid/widget/ImageView;

.field public l0:Landroid/widget/SeekBar;

.field public m0:Landroid/widget/TextView;

.field public n0:Landroidx/recyclerview/widget/RecyclerView;

.field public o0:Lib/player/base/helper/w;

.field public p0:Lib/player/models/WordModels;

.field public q0:Ljava/lang/String;

.field public r0:Ljava/lang/String;

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:Ljava/lang/String;

.field public v0:Ljava/lang/String;

.field public w0:J

.field public x0:I

.field public y0:I

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lf/i;-><init>()V

    new-instance v0, Lib/player/models/WordModels;

    invoke-direct {v0}, Lib/player/models/WordModels;-><init>()V

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    const-string v0, ""

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->q0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->s0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->t0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->v0:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->w0:J

    const/4 v1, 0x0

    iput v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->x0:I

    iput v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    iput v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->B0:I

    iput v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->C0:I

    iput v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->D0:I

    const/4 v1, 0x1

    iput v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->E0:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    const-string v1, "1920x1080"

    iput-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->P0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->Q0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->R0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->S0:Ljava/lang/String;

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->T0:Ljava/lang/String;

    new-instance v0, LA4/f;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, LA4/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->U0:LA4/f;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->a0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->b0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->Z:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->c0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->d0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final B(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

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

.method public final C(I)Ljava/util/ArrayList;
    .locals 10

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lib/player/models/TrackInfoObj;

    const/4 v3, 0x1

    iget-object v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

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

.method public final D()V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->N0:I

    new-instance v0, Lib/player/pages/series/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lib/player/pages/series/o;-><init>(Lib/player/pages/series/SeriesPlayerActivity;I)V

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v0}, Lib/player/pages/series/o;->run()V

    return-void
.end method

.method public final E(I)V
    .locals 6

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib/player/models/EpisodeModel;

    invoke-virtual {v0}, Lib/player/models/EpisodeModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->q0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->s0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->t0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->q0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->u0:Ljava/lang/String;

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->h0:Landroid/widget/TextView;

    iget-object v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->q0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EpisodeModel;

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->W()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v2}, Lib/player/base/helper/w;->d0()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v3}, Lib/player/base/helper/w;->Q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lib/player/models/EpisodeModel;

    invoke-virtual {v4}, Lib/player/models/EpisodeModel;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EpisodeModel;

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getContainer_extension()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, v3, v4, p1}, Lib/player/base/helper/d;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->u0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesPlayerActivity;->B(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->w0:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lib/player/pages/series/SeriesPlayerActivity;->K(Z)V

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
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getResume()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getResume_plyaback_from_ast_position()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->J0:Lz4/n;

    new-instance v1, Lib/player/pages/series/p;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lib/player/pages/series/p;-><init>(Lib/player/pages/series/SeriesPlayerActivity;I)V

    iput-object v1, v0, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p1}, Lib/player/pages/series/SeriesPlayerActivity;->G(JLjava/lang/String;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    return-void
.end method

.method public final F()V
    .locals 2

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p0, v0}, Lib/player/pages/series/SeriesPlayerActivity;->E(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final G(JLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->U0:LA4/f;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

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

    iget-object v6, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v6}, Lib/player/base/helper/w;->F()Z

    move-result v6

    invoke-static {p0, v6}, Lv4/a;->d(Landroid/content/Context;Z)Landroidx/media3/datasource/HttpDataSource$Factory;

    move-result-object v6

    iput-object v6, v5, Lu0/h;->d:Landroidx/media3/datasource/HttpDataSource$Factory;

    iget-object v6, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

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

    new-instance v3, Lib/player/pages/series/r;

    invoke-direct {v3, p0}, Lib/player/pages/series/r;-><init>(Lib/player/pages/series/SeriesPlayerActivity;)V

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    new-instance v3, Lib/player/pages/series/q;

    invoke-direct {v3, p0}, Lib/player/pages/series/q;-><init>(Lib/player/pages/series/SeriesPlayerActivity;)V

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

.method public final H()V
    .locals 5

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->u0:Ljava/lang/String;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->V()Ljava/util/List;

    move-result-object v1

    new-instance v2, LB4/i;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LB4/i;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Lib/player/models/ResumeModel;

    invoke-direct {v0}, Lib/player/models/ResumeModel;-><init>()V

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->T0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lib/player/models/ResumeModel;->setStream_id(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->u0:Ljava/lang/String;

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

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->V()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->w0:J

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v0, v1}, Lib/player/base/helper/w;->t0(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    :cond_1
    return-void
.end method

.method public final I(I)V
    .locals 8

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v2

    iget v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    add-int/2addr v4, p1

    iput v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v0, 0xa

    sub-long/2addr v2, v0

    invoke-interface {p1, v2, v3}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    add-long/2addr v4, v0

    invoke-interface {p1, v4, v5}, Landroidx/media3/common/Player;->seekTo(J)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->U0:LA4/f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final J(I)V
    .locals 6

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    add-int/2addr v2, p1

    iput v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player;->seekTo(J)V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->y0:I

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->U0:LA4/f;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final K(Z)V
    .locals 4

    new-instance v0, Lu/n;

    invoke-direct {v0}, Lu/n;-><init>()V

    iget-object v1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lu/n;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v1, 0x7f0b01ba

    const v2, 0x7f0b01b9

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v0, v2, v3}, Lu/n;->k(IF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lu/n;->k(IF)V

    goto :goto_0

    :cond_0
    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2, v3}, Lu/n;->k(IF)V

    const v2, 0x3f933333    # 1.15f

    invoke-virtual {v0, v1, v2}, Lu/n;->k(IF)V

    :goto_0
    iget-object v1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Lu/n;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->M0:Ls4/l;

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    iget v1, p1, Ls4/l;->f:I

    iput v0, p1, Ls4/l;->f:I

    invoke-virtual {p1, v1}, Lv1/y;->e(I)V

    iget v0, p1, Ls4/l;->f:I

    invoke-virtual {p1, v0}, Lv1/y;->e(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->e0(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final L()V
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
    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getStop_playback()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v3}, Lib/player/models/WordModels;->getPlayback_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v4}, Lib/player/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v5}, Lib/player/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lz4/n;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/n;

    move-result-object v1

    iput-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->K0:Lz4/n;

    new-instance v3, Lib/player/pages/series/p;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lib/player/pages/series/p;-><init>(Lib/player/pages/series/SeriesPlayerActivity;I)V

    iput-object v3, v1, Lz4/n;->D0:Lz4/m;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final M(Ljava/util/ArrayList;)V
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
    iget v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->C0:I

    new-instance v3, LD0/f;

    const/16 v6, 0xa

    invoke-direct {v3, p0, v6, p1}, LD0/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p0, v0, v2, v4, v3}, Lz4/N;->T(Landroid/content/Context;Ljava/util/ArrayList;IZLz4/M;)Lz4/N;

    move-result-object p1

    invoke-virtual {p1, v1, v5}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/util/ArrayList;Z)V
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

    iget v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->C0:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->D0:I

    :goto_0
    new-instance v4, LB4/k;

    const/4 v5, 0x4

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

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesPlayerActivity;->M(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

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

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-static {v1, p1, v0}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-static {v1, p1, v0}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_f

    const/16 v1, 0x55

    if-eq v0, v1, :cond_d

    const/16 v1, 0x59

    const/16 v5, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_12

    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    return v4

    :pswitch_1
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    return v4

    :cond_0
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->e0:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_1
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_2
    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->a0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_3
    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v4}, Lib/player/pages/series/SeriesPlayerActivity;->K(Z)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->e0:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_4
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_5
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_6
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0, v3}, Lib/player/pages/series/SeriesPlayerActivity;->K(Z)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Z:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v4

    :cond_7
    :pswitch_3
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->Y:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->B0:I

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_12

    invoke-virtual {p0, v5}, Lib/player/pages/series/SeriesPlayerActivity;->I(I)V

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->k0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    :pswitch_4
    iget-object v0, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_b

    invoke-virtual {p0, v5}, Lib/player/pages/series/SeriesPlayerActivity;->J(I)V

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->j0:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->B0:I

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_0
    return v4

    :cond_d
    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->L0:Lz4/z;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroidx/fragment/app/t;->p()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->L0:Lz4/z;

    invoke-virtual {p1, v3, v3}, Landroidx/fragment/app/m;->P(ZZ)V

    return v4

    :cond_10
    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lib/player/base/l;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lib/player/pages/series/SeriesPlayerActivity;->K(Z)V

    return v4

    :cond_11
    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->L()V

    return v4

    :cond_12
    :goto_1
    invoke-super {p0, p1}, Lf/i;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
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

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b009b

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->F()V

    return-void

    :cond_0
    const v0, 0x7f0b00a1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    if-lez p1, :cond_14

    sub-int/2addr p1, v1

    iput p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    iget p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesPlayerActivity;->E(I)V

    return-void

    :cond_1
    const v0, 0x7f0b00a5

    const/16 v2, 0xa

    iget-object v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    invoke-virtual {p0, v2}, Lib/player/pages/series/SeriesPlayerActivity;->J(I)V

    return-void

    :cond_2
    const v0, 0x7f0b0093

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    invoke-virtual {p0, v2}, Lib/player/pages/series/SeriesPlayerActivity;->I(I)V

    return-void

    :cond_3
    const v0, 0x7f0b009f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    const v0, 0x7f080155

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_4
    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    const v0, 0x7f080153

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_5
    const v0, 0x7f0b008b

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v1}, Lib/player/pages/series/SeriesPlayerActivity;->C(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    invoke-virtual {p0, p1, v2}, Lib/player/pages/series/SeriesPlayerActivity;->N(Ljava/util/ArrayList;Z)V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getNo_audio()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    const v0, 0x7f0b00a6

    if-ne p1, v0, :cond_a

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesPlayerActivity;->C(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_8

    invoke-virtual {p0, p1, v1}, Lib/player/pages/series/SeriesPlayerActivity;->N(Ljava/util/ArrayList;Z)V

    return-void

    :cond_8
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->v0:Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Lcom/bumptech/glide/f;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, Lcom/bumptech/glide/f;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lib/player/base/n;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->v0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&season_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    iget v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EpisodeModel;

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getSeason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&episode_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    iget v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib/player/models/EpisodeModel;

    invoke-virtual {v1}, Lib/player/models/EpisodeModel;->getEpisode_num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lib/player/base/n;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/f;->N(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-static {v0, p1, v1}, LB/f;->v(Lib/player/models/WordModels;Landroid/content/Context;I)V

    return-void

    :cond_a
    const v0, 0x7f0b00a3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v3, "fragment_resolution"

    invoke-virtual {p1, v3}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_b
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v0}, Lib/player/models/WordModels;->getFill()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

    invoke-virtual {v1}, Lib/player/models/WordModels;->getStringDefaultAlt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv4/c;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->E0:I

    new-instance v2, LA3/d;

    const/16 v4, 0x14

    invoke-direct {v2, v4, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lz4/J;

    invoke-direct {v4}, Lz4/J;-><init>()V

    iput-object p0, v4, Lz4/J;->C0:Lib/player/base/l;

    iput-object v0, v4, Lz4/J;->z0:Ljava/util/ArrayList;

    iput v1, v4, Lz4/J;->F0:I

    iput-object v2, v4, Lz4/J;->G0:Lz4/I;

    invoke-virtual {v4, p1, v3}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_c
    const v0, 0x7f0b0097

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->L0:Lz4/z;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/fragment/app/t;->p()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->L0:Lz4/z;

    invoke-virtual {p1, v2, v2}, Landroidx/fragment/app/m;->P(ZZ)V

    return-void

    :cond_e
    :goto_0
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    iget v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/EpisodeModel;

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v0}, Lib/player/base/helper/w;->B()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    goto :goto_2

    :cond_f
    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object v0

    invoke-virtual {v0}, Lib/player/models/EpisodeInfoModel;->getMovie_image()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_10
    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getStream_icon()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->q0:Ljava/lang/String;

    invoke-virtual {p1}, Lib/player/models/EpisodeModel;->getInfo()Lib/player/models/EpisodeInfoModel;

    move-result-object p1

    invoke-virtual {p1}, Lib/player/models/EpisodeInfoModel;->getPlot()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lib/player/pages/series/SeriesPlayerActivity;->P0:Ljava/lang/String;

    invoke-virtual {p0}, Lf/i;->o()Landroidx/fragment/app/K;

    move-result-object p1

    invoke-static {p1, p1}, Lcom/google/android/material/datepicker/e;->b(Landroidx/fragment/app/K;Landroidx/fragment/app/K;)Landroidx/fragment/app/a;

    move-result-object v0

    const-string v10, "fragment_info"

    invoke-virtual {p1, v10}, Landroidx/fragment/app/K;->B(Ljava/lang/String;)Landroidx/fragment/app/t;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/material/datepicker/e;->l(Landroidx/fragment/app/a;Landroidx/fragment/app/t;Ljava/lang/String;Z)V

    return-void

    :cond_11
    iget-object v7, p0, Lib/player/pages/series/SeriesPlayerActivity;->S0:Ljava/lang/String;

    iget-object v8, p0, Lib/player/pages/series/SeriesPlayerActivity;->Q0:Ljava/lang/String;

    iget-object v9, p0, Lib/player/pages/series/SeriesPlayerActivity;->R0:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lz4/z;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lz4/z;

    move-result-object v0

    iput-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->L0:Lz4/z;

    invoke-virtual {v0, p1, v10}, Landroidx/fragment/app/m;->S(Landroidx/fragment/app/K;Ljava/lang/String;)V

    return-void

    :cond_12
    const v0, 0x7f0b00a7

    if-ne p1, v0, :cond_13

    goto :goto_3

    :cond_13
    const v0, 0x7f0b008c

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->L()V

    :cond_14
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lib/player/base/l;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0023

    invoke-virtual {p0, p1}, Lf/i;->setContentView(I)V

    invoke-static {p0}, Lv4/c;->a(Lf/i;)V

    new-instance p1, Lib/player/base/helper/w;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lib/player/base/helper/w;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-static {p0}, Lib/player/base/helper/d;->j(Landroid/content/Context;)Lib/player/models/WordModels;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->p0:Lib/player/models/WordModels;

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

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

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

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Z()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/media3/ui/SubtitleView;->a(F)V

    iget-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->Z()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lk/Y;->setTextSize(IF)V

    iget-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {v1}, Lib/player/base/helper/w;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lib/player/base/l;->Q:Lib/player/base/view/SubtitleView;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

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

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->e0:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a1

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->U:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a5

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->V:Landroid/widget/ImageButton;

    const p1, 0x7f0b009f

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    const p1, 0x7f0b0093

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->X:Landroid/widget/ImageButton;

    const p1, 0x7f0b009b

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Y:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a6

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Z:Landroid/widget/ImageButton;

    const p1, 0x7f0b0097

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->a0:Landroid/widget/ImageButton;

    const p1, 0x7f0b008b

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->b0:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a3

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->c0:Landroid/widget/ImageButton;

    const p1, 0x7f0b00a7

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->d0:Landroid/widget/ImageButton;

    const p1, 0x7f0b03fd

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->i0:Landroid/widget/TextView;

    const p1, 0x7f0b0404

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->f0:Landroid/widget/TextView;

    const p1, 0x7f0b03e2

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->g0:Landroid/widget/TextView;

    const p1, 0x7f0b03f2

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->h0:Landroid/widget/TextView;

    const p1, 0x7f0b0400

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->m0:Landroid/widget/TextView;

    const p1, 0x7f0b01d3

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p1, 0x7f0b01ef

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->j0:Landroid/widget/ImageView;

    const p1, 0x7f0b01e4

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->k0:Landroid/widget/ImageView;

    const p1, 0x7f0b0311

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0b033e

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->l0:Landroid/widget/SeekBar;

    new-instance v1, LD4/p;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LD4/p;-><init>(Lf/i;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p1, 0x7f0b009e

    invoke-virtual {p0, p1}, Lf/i;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, LB4/u;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, LB4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->e0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Z:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->a0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->b0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->d0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->c0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->e0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Z:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->a0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->b0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->c0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->d0:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Y:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->Y:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "stream_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->T0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "season_pos"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->A0:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "series_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->s0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "season_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->t0:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "tmdb_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->v0:Ljava/lang/String;

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v3, p0, Lib/player/pages/series/SeriesPlayerActivity;->s0:Ljava/lang/String;

    iget-object v4, p0, Lib/player/pages/series/SeriesPlayerActivity;->t0:Ljava/lang/String;

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

    iput-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lib/player/base/helper/w;->x0(Landroid/content/Context;)Lib/player/base/helper/w;

    move-result-object p1

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->s0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lib/player/base/helper/w;->s(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/Season;

    invoke-virtual {p1}, Lib/player/models/Season;->getEpisodeModels()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->o0:Lib/player/base/helper/w;

    invoke-virtual {p1}, Lib/player/base/helper/w;->y()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    :cond_1
    :goto_0
    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->m0:Landroid/widget/TextView;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->t0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ls4/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LB4/d;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, LB4/d;-><init>(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Ls4/l;-><init>(I)V

    iput-object p0, p1, Ls4/l;->h:Landroid/content/Context;

    const/4 v2, -0x1

    iput v2, p1, Ls4/l;->f:I

    iput-object v1, p1, Ls4/l;->i:LS4/a;

    iput-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->M0:Ls4/l;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->F0:Ljava/util/List;

    iget v2, p0, Lib/player/pages/series/SeriesPlayerActivity;->A0:I

    iput-object v1, p1, Ls4/l;->e:Ljava/util/List;

    iput v2, p1, Ls4/l;->g:I

    invoke-virtual {p1}, Lv1/y;->d()V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->M0:Ls4/l;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    iget p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->z0:I

    invoke-virtual {p0, p1}, Lib/player/pages/series/SeriesPlayerActivity;->E(I)V

    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object p2, p0, Lib/player/pages/series/SeriesPlayerActivity;->H0:Lib/player/pages/series/o;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->D()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lf/i;->onPause()V

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->f()V

    :cond_0
    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    :cond_1
    return-void
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

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

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->f0:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-static {v0, v1, p2, p2}, Lv4/c;->w(JZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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
    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->r0:Ljava/lang/String;

    iget-wide v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->w0:J

    invoke-virtual {p0, v1, v2, v0}, Lib/player/pages/series/SeriesPlayerActivity;->G(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lf/i;->onStop()V

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lib/player/base/l;->O:Landroidx/media3/ui/PlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->f()V

    :cond_0
    invoke-virtual {p0}, Lib/player/pages/series/SeriesPlayerActivity;->H()V

    :cond_1
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

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->G0:Landroid/os/Handler;

    iget-object v1, p0, Lib/player/pages/series/SeriesPlayerActivity;->U0:LA4/f;

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

    iget-object p1, p0, Lib/player/pages/series/SeriesPlayerActivity;->f0:Landroid/widget/TextView;

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

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->U:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->V:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->W:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->X:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lib/player/pages/series/SeriesPlayerActivity;->Y:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
