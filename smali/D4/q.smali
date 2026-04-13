.class public final LD4/q;
.super Ljava/lang/Object;

# interfaces
.implements Lq0/c;


# instance fields
.field public final synthetic a:Lib/player/pages/movie/MoviePlayerActivity;


# direct methods
.method public constructor <init>(Lib/player/pages/movie/MoviePlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD4/q;->a:Lib/player/pages/movie/MoviePlayerActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LD4/q;->a:Lib/player/pages/movie/MoviePlayerActivity;

    iput-object p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->G0:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 4

    const-string v0, "ExoPlayer"

    const-string v1, "DRM Session Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lib/player/pages/movie/MoviePlayerActivity;->K0:I

    iget-object v0, p0, LD4/q;->a:Lib/player/pages/movie/MoviePlayerActivity;

    iget-object v1, v0, Lib/player/base/l;->N:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lp3/H;->l(I)Lp3/F;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lp3/F;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lp3/F;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v3, v2}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    iput-object v3, v0, Lib/player/pages/movie/MoviePlayerActivity;->H0:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lq0/b;IJJ)V
    .locals 0

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 p2, 0x3e8

    div-long/2addr p5, p2

    const-string p2, " Kb/s"

    invoke-static {p1, p5, p6, p2}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LD4/q;->a:Lib/player/pages/movie/MoviePlayerActivity;

    iput-object p1, p2, Lib/player/pages/movie/MoviePlayerActivity;->I0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LD4/q;->a:Lib/player/pages/movie/MoviePlayerActivity;

    iput-object p1, v0, Lib/player/pages/movie/MoviePlayerActivity;->z0:Ljava/lang/String;

    return-void
.end method
