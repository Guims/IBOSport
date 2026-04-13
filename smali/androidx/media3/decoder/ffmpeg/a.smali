.class public final Landroidx/media3/decoder/ffmpeg/a;
.super Landroidx/media3/exoplayer/BaseRenderer;


# instance fields
.field public A:I

.field public B:J

.field public C:Z

.field public D:Landroidx/media3/common/VideoSize;

.field public E:J

.field public F:I

.field public G:Landroidx/media3/exoplayer/DecoderCounters;

.field public final b:J

.field public final q:LA/j;

.field public final r:LB4/p;

.field public final s:Lp0/f;

.field public t:Landroidx/media3/common/Format;

.field public u:I

.field public v:Ljava/lang/Object;

.field public w:Landroid/view/Surface;

.field public x:LG0/w;

.field public y:Lu0/j;

.field public z:Lu0/j;


# direct methods
.method public constructor <init>(JLandroid/os/Handler;LG0/I;I)V
    .locals 0

    const/4 p5, 0x2

    invoke-direct {p0, p5}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/a;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    new-instance p1, LB4/p;

    invoke-direct {p1}, LB4/p;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->r:LB4/p;

    new-instance p1, Lp0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->s:Lp0/f;

    new-instance p1, LA/j;

    invoke-direct {p1, p3, p4}, LA/j;-><init>(Landroid/os/Handler;LG0/I;)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/a;->u:I

    iput p2, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->G:Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->z:Lu0/j;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->y:Lu0/j;

    invoke-static {v1, v0}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->y:Lu0/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lu0/j;->h()Lp0/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->y:Lu0/j;

    invoke-interface {v0}, Lu0/j;->g()Lu0/i;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xfa1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "createFfmpegVideoDecoder"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J
    :try_end_0
    .catch Lp0/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :goto_1
    const-string v2, "DecoderVideoRenderer"

    const-string v3, "Video codec error"

    invoke-static {v2, v3, v1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    iget-object v3, v2, LA/j;->q:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_1

    new-instance v4, LA/o;

    const/16 v5, 0x8

    invoke-direct {v4, v2, v5, v1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final enableMayRenderStartOfStream()V
    .locals 1

    iget v0, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ExperimentalFfmpegVideoRenderer"

    return-object v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    instance-of p1, p2, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroid/view/Surface;

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->w:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->x:LG0/w;

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/a;->u:I

    goto :goto_0

    :cond_0
    instance-of p1, p2, LG0/w;

    if-eqz p1, :cond_1

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->w:Landroid/view/Surface;

    move-object p1, p2

    check-cast p1, LG0/w;

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->x:LG0/w;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/a;->u:I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->w:Landroid/view/Surface;

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->x:LG0/w;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/a;->u:I

    move-object p2, v1

    :goto_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->v:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    if-eq p1, p2, :cond_5

    iput-object p2, p0, Landroidx/media3/decoder/ffmpeg/a;->v:Ljava/lang/Object;

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->D:Landroidx/media3/common/VideoSize;

    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, LA/j;->A(Landroidx/media3/common/VideoSize;)V

    :cond_2
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    const-wide/16 p1, 0x0

    iget-wide v0, p0, Landroidx/media3/decoder/ffmpeg/a;->b:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v0

    goto :goto_1

    :cond_3
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    return-void

    :cond_4
    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->D:Landroidx/media3/common/VideoSize;

    iget p1, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    return-void

    :cond_5
    if-eqz p2, :cond_7

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->D:Landroidx/media3/common/VideoSize;

    if-eqz p1, :cond_6

    invoke-virtual {v2, p1}, LA/j;->A(Landroidx/media3/common/VideoSize;)V

    :cond_6
    iget p1, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->v:Ljava/lang/Object;

    if-eqz p1, :cond_7

    iget-object p2, v2, LA/j;->q:Ljava/lang/Object;

    check-cast p2, Landroid/os/Handler;

    if-eqz p2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v3, LG0/G;

    invoke-direct {v3, v2, p1, v0, v1}, LG0/G;-><init>(LA/j;Ljava/lang/Object;J)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    check-cast p2, LG0/x;

    return-void

    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/decoder/ffmpeg/a;->C:Z

    return v0
.end method

.method public final isReady()Z
    .locals 9

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    iget v0, p0, Landroidx/media3/decoder/ffmpeg/a;->u:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    return v1

    :cond_2
    :goto_0
    iget-wide v4, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    return v4
.end method

.method public final onDisabled()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->D:Landroidx/media3/common/VideoSize;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    :try_start_0
    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->z:Lu0/j;

    invoke-static {v2, v1}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->z:Lu0/j;

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->y:Lu0/j;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->y:Lu0/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/media3/decoder/ffmpeg/a;->G:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, LA/j;->q(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/media3/decoder/ffmpeg/a;->G:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v2}, LA/j;->q(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1
.end method

.method public final onEnabled(ZZ)V
    .locals 4

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->G:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object v0, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    iget-object v1, v0, LA/j;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LG0/H;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, LG0/H;-><init>(LA/j;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput p2, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/a;->C:Z

    const/4 p1, 0x1

    iget p2, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/decoder/ffmpeg/a;->A:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/a;->b:J

    cmp-long p3, v2, v0

    if-lez p3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v2

    :cond_0
    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    :goto_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->r:LB4/p;

    invoke-virtual {p1}, LB4/p;->b()V

    return-void
.end method

.method public final onStarted()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/decoder/ffmpeg/a;->F:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/a;->E:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    sget v0, Lk0/C;->a:I

    return-void
.end method

.method public final onStopped()V
    .locals 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/a;->B:J

    iget v0, p0, Landroidx/media3/decoder/ffmpeg/a;->F:I

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/decoder/ffmpeg/a;->E:J

    sub-long v2, v0, v2

    iget v4, p0, Landroidx/media3/decoder/ffmpeg/a;->F:I

    iget-object v5, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    iget-object v6, v5, LA/j;->q:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    if-eqz v6, :cond_0

    new-instance v7, LG0/F;

    invoke-direct {v7, v5, v4, v2, v3}, LG0/F;-><init>(LA/j;IJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/decoder/ffmpeg/a;->F:I

    iput-wide v0, p0, Landroidx/media3/decoder/ffmpeg/a;->E:J

    :cond_1
    return-void
.end method

.method public final render(JJ)V
    .locals 2

    iget-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/a;->C:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/a;->s:Lp0/f;

    invoke-virtual {p2}, Lp0/f;->k()V

    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_1

    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Lu0/j;

    iget-object p3, p0, Landroidx/media3/decoder/ffmpeg/a;->z:Lu0/j;

    invoke-static {p3, p1}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->z:Lu0/j;

    iput-object p2, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/a;->a()V

    iget-object p1, p0, Landroidx/media3/decoder/ffmpeg/a;->t:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Landroidx/media3/decoder/ffmpeg/a;->q:LA/j;

    iget-object p3, p2, LA/j;->q:Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    if-eqz p3, :cond_3

    new-instance p4, LG0/n;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p4, p2, p1, v1, v0}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne p3, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, LU2/e;->c(I)Z

    move-result p1

    invoke-static {p1}, Lk0/c;->j(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/decoder/ffmpeg/a;->C:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/decoder/ffmpeg/a;->a()V

    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1
.end method
