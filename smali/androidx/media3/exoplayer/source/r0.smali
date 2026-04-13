.class public final Landroidx/media3/exoplayer/source/r0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/C;
.implements Landroidx/media3/exoplayer/source/B;


# instance fields
.field public final b:Landroidx/media3/exoplayer/source/C;

.field public final q:J

.field public r:Landroidx/media3/exoplayer/source/B;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/C;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/media3/exoplayer/LoadingInfo;->buildUpon()Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/h0;->c(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J
    .locals 11

    array-length v0, p3

    new-array v4, v0, [Landroidx/media3/exoplayer/source/f0;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    const/4 v8, 0x0

    if-ge v1, v2, :cond_1

    aget-object v2, p3, v1

    check-cast v2, Landroidx/media3/exoplayer/source/q0;

    if-eqz v2, :cond_0

    iget-object v8, v2, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    :cond_0
    aput-object v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    iget-wide v9, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long v6, p5, v9

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/source/C;->e([LD0/v;[Z[Landroidx/media3/exoplayer/source/f0;[ZJ)J

    move-result-wide p1

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    aget-object v1, v4, v0

    if-nez v1, :cond_2

    aput-object v8, p3, v0

    goto :goto_2

    :cond_2
    aget-object v2, p3, v0

    if-eqz v2, :cond_3

    check-cast v2, Landroidx/media3/exoplayer/source/q0;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/q0;->b:Landroidx/media3/exoplayer/source/f0;

    if-eq v2, v1, :cond_4

    :cond_3
    new-instance v2, Landroidx/media3/exoplayer/source/q0;

    invoke-direct {v2, v1, v9, v10}, Landroidx/media3/exoplayer/source/q0;-><init>(Landroidx/media3/exoplayer/source/f0;J)V

    aput-object v2, p3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-long/2addr p1, v9

    return-wide p1
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->f()V

    return-void
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 3

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long/2addr p1, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v2, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final i(J)J
    .locals 3

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long/2addr p1, v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v2, p1, p2}, Landroidx/media3/exoplayer/source/C;->i(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->k()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final n(Landroidx/media3/exoplayer/source/B;J)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/r0;->r:Landroidx/media3/exoplayer/source/B;

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long/2addr p2, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/C;->n(Landroidx/media3/exoplayer/source/B;J)V

    return-void
.end method

.method public final o()Landroidx/media3/exoplayer/source/t0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/C;->o()Landroidx/media3/exoplayer/source/t0;

    move-result-object v0

    return-object v0
.end method

.method public final onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/C;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/r0;->r:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/g0;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/h0;)V

    return-void
.end method

.method public final onPrepared(Landroidx/media3/exoplayer/source/C;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/r0;->r:Landroidx/media3/exoplayer/source/B;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/B;->onPrepared(Landroidx/media3/exoplayer/source/C;)V

    return-void
.end method

.method public final p()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/h0;->p()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final r(JZ)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/C;->r(JZ)V

    return-void
.end method

.method public final s(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/r0;->q:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/r0;->b:Landroidx/media3/exoplayer/source/C;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/h0;->s(J)V

    return-void
.end method
