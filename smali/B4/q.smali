.class public final LB4/q;
.super Ljava/lang/Object;

# interfaces
.implements Lq0/c;


# instance fields
.field public final synthetic a:LB4/s;


# direct methods
.method public constructor <init>(LB4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB4/q;->a:LB4/s;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LB4/q;->a:LB4/s;

    iget-object v0, v0, LB4/s;->i1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()V
    .locals 5

    const-string v0, "ExoPlayer"

    const-string v1, "DRM Session Acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, LB4/q;->a:LB4/s;

    iget-object v1, v0, LB4/s;->I0:Landroidx/media3/exoplayer/ExoPlayer;

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

    iget-object v4, v0, LB4/s;->g1:Landroid/widget/TextView;

    iget-object v3, v3, Landroidx/media3/common/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Lq0/b;IJJ)V
    .locals 0

    const-wide/16 p1, 0x0

    cmp-long p1, p5, p1

    if-lez p1, :cond_0

    iget-object p1, p0, LB4/q;->a:LB4/s;

    iget-object p1, p1, LB4/s;->h1:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 p3, 0x3e8

    div-long/2addr p5, p3

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " Kb/s"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget-object v0, p0, LB4/q;->a:LB4/s;

    iget-object v0, v0, LB4/s;->d1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
