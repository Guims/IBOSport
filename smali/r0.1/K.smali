.class public final Lr0/K;
.super Ly0/t;

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public final C0:Landroid/content/Context;

.field public final D0:Lp5/p;

.field public final E0:Lr0/s;

.field public final F0:Lr0/C;

.field public G0:I

.field public H0:Z

.field public I0:Z

.field public J0:Landroidx/media3/common/Format;

.field public K0:Landroidx/media3/common/Format;

.field public L0:J

.field public M0:Z

.field public N0:Z

.field public O0:Z

.field public P0:I

.field public Q0:Z

.field public R0:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly0/k;Ly0/u;ZLandroid/os/Handler;Lr0/l;Lr0/s;)V
    .locals 7

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Lr0/C;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lr0/C;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    const v6, 0x472c4400    # 44100.0f

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Ly0/t;-><init>(ILy0/k;Ly0/u;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lr0/K;->C0:Landroid/content/Context;

    iput-object p7, v1, Lr0/K;->E0:Lr0/s;

    iput-object v0, v1, Lr0/K;->F0:Lr0/C;

    const/16 p1, -0x3e8

    iput p1, v1, Lr0/K;->P0:I

    new-instance p1, Lp5/p;

    invoke-direct {p1, p5, p6}, Lp5/p;-><init>(Landroid/os/Handler;Lr0/l;)V

    iput-object p1, v1, Lr0/K;->D0:Lp5/p;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, v1, Lr0/K;->R0:J

    new-instance p1, Lr0/J;

    invoke-direct {p1, p0}, Lr0/J;-><init>(Lr0/K;)V

    check-cast p7, Lr0/G;

    iput-object p1, p7, Lr0/G;->s:Lr0/p;

    return-void
.end method

.method public static Y(Ly0/u;Landroidx/media3/common/Format;ZLr0/s;)Lp3/Y;
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object p0, Lp3/H;->q:Lp3/F;

    sget-object p0, Lp3/Y;->t:Lp3/Y;

    return-object p0

    :cond_0
    check-cast p3, Lr0/G;

    invoke-virtual {p3, p1}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const-string p3, "audio/raw"

    invoke-static {p3, v0, v0}, Ly0/A;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly0/o;

    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p3}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1, p2, v0}, Ly0/A;->g(Ly0/u;Landroidx/media3/common/Format;ZZ)Lp3/Y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr0/G;->M:Z

    return-void
.end method

.method public final G(JJLy0/l;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lr0/K;->R0:J

    iget-object p1, p0, Lr0/K;->K0:Landroidx/media3/common/Format;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7}, Ly0/l;->d(I)V

    return p2

    :cond_0
    iget-object p1, p0, Lr0/K;->E0:Lr0/s;

    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7}, Ly0/l;->d(I)V

    :cond_1
    iget-object p3, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p4, p9

    iput p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    check-cast p1, Lr0/G;

    iput-boolean p2, p1, Lr0/G;->M:Z

    return p2

    :cond_2
    :try_start_0
    check-cast p1, Lr0/G;

    invoke-virtual {p1, p6, p10, p11, p9}, Lr0/G;->m(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lr0/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lr0/r; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7}, Ly0/l;->d(I)V

    :cond_3
    iget-object p1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p3, p9

    iput p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    return p2

    :cond_4
    iput-wide p10, p0, Lr0/K;->R0:J

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_0
    iget-boolean p2, p0, Ly0/t;->g0:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object p2

    iget p2, p2, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz p2, :cond_5

    const/16 p2, 0x138b

    goto :goto_1

    :cond_5
    const/16 p2, 0x138a

    :goto_1
    iget-boolean p3, p1, Lr0/r;->q:Z

    invoke-virtual {p0, p1, p14, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_2
    iget-object p2, p0, Lr0/K;->J0:Landroidx/media3/common/Format;

    iget-boolean p3, p0, Ly0/t;->g0:Z

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object p3

    iget p3, p3, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz p3, :cond_6

    const/16 p3, 0x138c

    goto :goto_3

    :cond_6
    const/16 p3, 0x1389

    :goto_3
    iget-boolean p4, p1, Lr0/o;->q:Z

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final J()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->v()V

    iget-wide v0, p0, Ly0/t;->r0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lr0/K;->R0:J
    :try_end_0
    .catch Lr0/r; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-boolean v1, p0, Ly0/t;->g0:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x138b

    goto :goto_1

    :cond_1
    const/16 v1, 0x138a

    :goto_1
    iget-object v2, v0, Lr0/r;->r:Landroidx/media3/common/Format;

    iget-boolean v3, v0, Lr0/r;->q:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final R(Landroidx/media3/common/Format;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lr0/K;->W(Landroidx/media3/common/Format;)I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object v1

    iget v1, v1, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/media3/common/Format;->encoderPadding:I

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0, p1}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result p1

    return p1
.end method

.method public final S(Ly0/u;Landroidx/media3/common/Format;)I
    .locals 10

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_0
    iget v0, p2, Landroidx/media3/common/Format;->cryptoType:I

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    const-string v5, "audio/raw"

    const/16 v6, 0x8

    const/4 v7, 0x4

    iget-object v8, p0, Lr0/K;->E0:Lr0/s;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    invoke-static {v5, v1, v1}, Ly0/A;->e(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly0/o;

    :goto_3
    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0, p2}, Lr0/K;->W(Landroidx/media3/common/Format;)I

    move-result v3

    move-object v9, v8

    check-cast v9, Lr0/G;

    invoke-virtual {v9, p2}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 p1, 0x20

    invoke-static {v7, v6, p1, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result p1

    return p1

    :cond_6
    move v3, v1

    :cond_7
    iget-object v9, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v8

    check-cast v5, Lr0/G;

    invoke-virtual {v5, p2}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_8
    iget v5, p2, Landroidx/media3/common/Format;->channelCount:I

    iget v9, p2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v4, v5, v9}, Lk0/C;->A(III)Landroidx/media3/common/Format;

    move-result-object v5

    move-object v9, v8

    check-cast v9, Lr0/G;

    invoke-virtual {v9, v5}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, v1, v8}, Lr0/K;->Y(Ly0/u;Landroidx/media3/common/Format;ZLr0/s;)Lp3/Y;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_a
    if-nez v0, :cond_b

    invoke-static {v4}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_b
    invoke-virtual {p1, v1}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/o;

    invoke-virtual {v0, p2}, Ly0/o;->d(Landroidx/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_d

    move v5, v2

    :goto_4
    iget v8, p1, Lp3/Y;->s:I

    if-ge v5, v8, :cond_d

    invoke-virtual {p1, v5}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly0/o;

    invoke-virtual {v8, p2}, Ly0/o;->d(Landroidx/media3/common/Format;)Z

    move-result v9

    if-eqz v9, :cond_c

    move p1, v1

    move-object v0, v8

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    move p1, v2

    move v2, v4

    :goto_5
    if-eqz v2, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x3

    :goto_6
    if-eqz v2, :cond_f

    invoke-virtual {v0, p2}, Ly0/o;->e(Landroidx/media3/common/Format;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/16 v6, 0x10

    :cond_f
    iget-boolean p2, v0, Ly0/o;->g:Z

    if-eqz p2, :cond_10

    const/16 p2, 0x40

    goto :goto_7

    :cond_10
    move p2, v1

    :goto_7
    if-eqz p1, :cond_11

    const/16 v1, 0x80

    :cond_11
    move v4, v1

    const/16 v2, 0x20

    move v5, v3

    move v1, v6

    move v0, v7

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIIIII)I

    move-result p1

    return p1
.end method

.method public final W(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0, p1}, Lr0/G;->i(Landroidx/media3/common/Format;)Lr0/f;

    move-result-object p1

    iget-boolean v0, p1, Lr0/f;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p1, Lr0/f;->b:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x600

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    :goto_0
    iget-boolean p1, p1, Lr0/f;->c:Z

    if-eqz p1, :cond_2

    or-int/lit16 p1, v0, 0x800

    return p1

    :cond_2
    return v0
.end method

.method public final X(Ly0/o;Landroidx/media3/common/Format;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lk0/C;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lr0/K;->C0:Landroid/content/Context;

    invoke-static {p1}, Lk0/C;->O(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Landroidx/media3/common/Format;->maxInputSize:I

    return p1
.end method

.method public final Z()V
    .locals 4

    invoke-virtual {p0}, Lr0/K;->isEnded()Z

    move-result v0

    iget-object v1, p0, Lr0/K;->E0:Lr0/s;

    check-cast v1, Lr0/G;

    invoke-virtual {v1, v0}, Lr0/G;->h(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lr0/K;->M0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lr0/K;->L0:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lr0/K;->L0:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/K;->M0:Z

    :cond_1
    return-void
.end method

.method public final b(Ly0/o;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 8

    invoke-virtual {p1, p2, p3}, Ly0/o;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    iget v1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    iget-object v2, p0, Ly0/t;->D:Lu0/j;

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Lr0/K;->R(Landroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0, p1, p3}, Lr0/K;->X(Ly0/o;Landroidx/media3/common/Format;)I

    move-result v2

    iget v3, p0, Lr0/K;->G0:I

    if-le v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    move v7, v1

    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v3, p1, Ly0/o;->a:Ljava/lang/String;

    if-eqz v7, :cond_2

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    :cond_2
    iget p1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v2
.end method

.method public final getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    iget-object v0, v0, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public final getPositionUs()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lr0/K;->Z()V

    :cond_0
    iget-wide v0, p0, Lr0/K;->L0:J

    return-wide v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    iget-object v1, p0, Lr0/K;->E0:Lr0/s;

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x6

    if-eq p1, v0, :cond_e

    const/16 v0, 0xc

    const/4 v2, 0x0

    if-eq p1, v0, :cond_a

    const/16 v0, 0x10

    const/4 v3, 0x0

    const/16 v4, 0x23

    if-eq p1, v0, :cond_8

    const/16 v0, 0x9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Ly0/t;->handleMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v1, Lr0/G;

    iget p2, v1, Lr0/G;->Y:I

    if-eq p2, p1, :cond_2

    iput p1, v1, Lr0/G;->Y:I

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, v1, Lr0/G;->X:Z

    invoke-virtual {v1}, Lr0/G;->g()V

    :cond_2
    sget p2, Lk0/C;->a:I

    if-lt p2, v4, :cond_11

    iget-object p2, p0, Lr0/K;->F0:Lr0/C;

    if-eqz p2, :cond_11

    iget-object v0, p2, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/media3/exoplayer/c;->d(Landroid/media/LoudnessCodecController;)V

    iput-object v2, p2, Lr0/C;->d:Ljava/lang/Object;

    :cond_3
    new-instance v0, Ly0/i;

    invoke-direct {v0, p2}, Ly0/i;-><init>(Lr0/C;)V

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/c;->c(ILy0/i;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    iput-object p1, p2, Lr0/C;->d:Ljava/lang/Object;

    iget-object p2, p2, Lr0/C;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/c;->g(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v1, Lr0/G;

    iput-boolean p1, v1, Lr0/G;->E:Z

    invoke-virtual {v1}, Lr0/G;->E()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_6
    iget-object p1, v1, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    goto :goto_1

    :goto_2
    new-instance v2, Lr0/D;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, Lr0/D;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v2, v1, Lr0/G;->B:Lr0/D;

    return-void

    :cond_7
    iput-object v2, v1, Lr0/G;->C:Lr0/D;

    return-void

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lr0/K;->P0:I

    iget-object p1, p0, Ly0/t;->J:Ly0/l;

    if-nez p1, :cond_9

    goto/16 :goto_5

    :cond_9
    sget p2, Lk0/C;->a:I

    if-lt p2, v4, :cond_11

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lr0/K;->P0:I

    neg-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ly0/l;->b(Landroid/os/Bundle;)V

    return-void

    :cond_a
    sget p1, Lk0/C;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_11

    check-cast p2, Landroid/media/AudioDeviceInfo;

    check-cast v1, Lr0/G;

    if-nez p2, :cond_b

    move-object p1, v2

    goto :goto_3

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/bumptech/glide/f;

    const/16 v0, 0x14

    invoke-direct {p1, v0, p2}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    :goto_3
    iput-object p1, v1, Lr0/G;->a0:Lcom/bumptech/glide/f;

    iget-object p1, v1, Lr0/G;->y:Lr0/e;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Lr0/e;->b(Landroid/media/AudioDeviceInfo;)V

    :cond_c
    iget-object p1, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    if-eqz p1, :cond_11

    iget-object p2, v1, Lr0/G;->a0:Lcom/bumptech/glide/f;

    if-nez p2, :cond_d

    goto :goto_4

    :cond_d
    iget-object p2, p2, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Landroid/media/AudioDeviceInfo;

    :goto_4
    invoke-virtual {p1, v2}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void

    :cond_e
    check-cast p2, Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lr0/G;

    invoke-virtual {v1, p2}, Lr0/G;->A(Landroidx/media3/common/AuxEffectInfo;)V

    return-void

    :cond_f
    check-cast p2, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lr0/G;

    invoke-virtual {v1, p2}, Lr0/G;->y(Landroidx/media3/common/AudioAttributes;)V

    return-void

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v1, Lr0/G;

    iget p2, v1, Lr0/G;->P:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_11

    iput p1, v1, Lr0/G;->P:F

    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget p2, v1, Lr0/G;->P:F

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_11
    :goto_5
    return-void
.end method

.method public final hasSkippedSilenceSinceLastCall()Z
    .locals 2

    iget-boolean v0, p0, Lr0/K;->O0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr0/K;->O0:Z

    return v0
.end method

.method public final isEnded()Z
    .locals 2

    iget-boolean v0, p0, Ly0/t;->t0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lr0/G;->T:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lr0/G;->n()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Ly0/t;->isReady()Z

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

.method public final m(F[Landroidx/media3/common/Format;)F
    .locals 5

    array-length v0, p2

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    iget v4, v4, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v4, v1, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v3

    mul-float/2addr p2, p1

    return p2
.end method

.method public final n(Ly0/u;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    invoke-static {p1, p2, p3, v0}, Lr0/K;->Y(Ly0/u;Landroidx/media3/common/Format;ZLr0/s;)Lp3/Y;

    move-result-object p1

    sget-object p3, Ly0/A;->a:Ljava/util/HashMap;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lp2/f;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p2}, Lp2/f;-><init>(ILjava/lang/Object;)V

    new-instance p2, Ly0/v;

    invoke-direct {p2, p1}, Ly0/v;-><init>(Ly0/z;)V

    invoke-static {p3, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p3
.end method

.method public final o(JJZ)J
    .locals 6

    iget-wide v0, p0, Lr0/K;->R0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    sub-long/2addr v0, p1

    long-to-float p1, v0

    invoke-virtual {p0}, Lr0/K;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lr0/K;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/PlaybackParameters;->speed:F

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    iget-boolean p5, p0, Lr0/K;->Q0:Z

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object p5

    check-cast p5, Lk0/w;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk0/C;->Q(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    :cond_1
    const-wide/16 p3, 0x2710

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_2
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-super/range {v0 .. v5}, Ly0/t;->o(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final onDisabled()V
    .locals 3

    iget-object v0, p0, Lr0/K;->D0:Lp5/p;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr0/K;->N0:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lr0/K;->J0:Landroidx/media3/common/Format;

    :try_start_0
    iget-object v1, p0, Lr0/K;->E0:Lr0/s;

    check-cast v1, Lr0/G;

    invoke-virtual {v1}, Lr0/G;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Ly0/t;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Lp5/p;->y(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v2}, Lp5/p;->y(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-super {p0}, Ly0/t;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v2}, Lp5/p;->y(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1

    :catchall_2
    move-exception v1

    iget-object v2, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v2}, Lp5/p;->y(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1
.end method

.method public final onEnabled(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Ly0/t;->onEnabled(ZZ)V

    iget-object p1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p2, p0, Lr0/K;->D0:Lp5/p;

    iget-object v0, p2, Lp5/p;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lr0/g;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Lr0/g;-><init>(Lp5/p;Landroidx/media3/exoplayer/DecoderCounters;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    iget-object p2, p0, Lr0/K;->E0:Lr0/s;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lr0/G;

    iget-boolean v0, p1, Lr0/G;->X:Z

    invoke-static {v0}, Lk0/c;->j(Z)V

    iget-boolean v0, p1, Lr0/G;->b0:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lr0/G;->b0:Z

    invoke-virtual {p1}, Lr0/G;->g()V

    goto :goto_0

    :cond_1
    move-object p1, p2

    check-cast p1, Lr0/G;

    iget-boolean v0, p1, Lr0/G;->b0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lr0/G;->b0:Z

    invoke-virtual {p1}, Lr0/G;->g()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getPlayerId()Lq0/q;

    move-result-object p1

    check-cast p2, Lr0/G;

    iput-object p1, p2, Lr0/G;->r:Lq0/q;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object p1

    iget-object p2, p2, Lr0/G;->h:Lr0/v;

    iput-object p1, p2, Lr0/v;->I:Lk0/d;

    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ly0/t;->onPositionReset(JZ)V

    iget-object p3, p0, Lr0/K;->E0:Lr0/s;

    check-cast p3, Lr0/G;

    invoke-virtual {p3}, Lr0/G;->g()V

    iput-wide p1, p0, Lr0/K;->L0:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr0/K;->O0:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr0/K;->M0:Z

    return-void
.end method

.method public final onRelease()V
    .locals 4

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    iget-object v0, v0, Lr0/G;->y:Lr0/e;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lr0/e;->a:Landroid/content/Context;

    iget-boolean v2, v0, Lr0/e;->j:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lr0/e;->g:Lr0/b;

    sget v2, Lk0/C;->a:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    iget-object v2, v0, Lr0/e;->d:Lr0/c;

    if-eqz v2, :cond_1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_1
    iget-object v2, v0, Lr0/e;->e:Lf/x;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lr0/e;->f:Lr0/d;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lr0/d;->a:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lr0/e;->j:Z

    :cond_3
    :goto_0
    sget v0, Lk0/C;->a:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lr0/K;->F0:Lr0/C;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lr0/C;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v0, v0, Lr0/C;->d:Ljava/lang/Object;

    check-cast v0, Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroidx/media3/exoplayer/c;->d(Landroid/media/LoudnessCodecController;)V

    :cond_4
    return-void
.end method

.method public final onReset()V
    .locals 4

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr0/K;->O0:Z

    :try_start_0
    invoke-super {p0}, Ly0/t;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lr0/K;->N0:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lr0/K;->N0:Z

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->x()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lr0/K;->N0:Z

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lr0/K;->N0:Z

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->x()V

    :cond_1
    throw v2
.end method

.method public final onStarted()V
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/K;->Q0:Z

    return-void
.end method

.method public final onStopped()V
    .locals 1

    invoke-virtual {p0}, Lr0/K;->Z()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/K;->Q0:Z

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->s()V

    return-void
.end method

.method public final p(Ly0/o;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)LD5/g;
    .locals 12

    move/from16 v0, p4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object v2

    invoke-virtual/range {p0 .. p2}, Lr0/K;->X(Ly0/o;Landroidx/media3/common/Format;)I

    move-result v4

    iget-object v5, p1, Ly0/o;->a:Ljava/lang/String;

    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    array-length v6, v2

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_2

    aget-object v10, v2, v9

    invoke-virtual {p1, p2, v10}, Ly0/o;->b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v11

    iget v11, v11, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v11, :cond_1

    invoke-virtual {p0, p1, v10}, Lr0/K;->X(Ly0/o;Landroidx/media3/common/Format;)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v4, p0, Lr0/K;->G0:I

    sget v2, Lk0/C;->a:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_4

    const-string v6, "OMX.SEC.aac.dec"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "samsung"

    sget-object v9, Lk0/C;->c:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lk0/C;->b:Ljava/lang/String;

    const-string v9, "zeroflte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "herolte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "heroqlte"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lr0/K;->H0:Z

    const-string v6, "OMX.google.opus.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "c2.android.opus.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "OMX.google.vorbis.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "c2.android.vorbis.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v8

    :goto_4
    iput-boolean v5, p0, Lr0/K;->I0:Z

    iget-object v5, p1, Ly0/o;->c:Ljava/lang/String;

    iget v6, p0, Lr0/K;->G0:I

    new-instance v9, Landroid/media/MediaFormat;

    invoke-direct {v9}, Landroid/media/MediaFormat;-><init>()V

    const-string v10, "mime"

    invoke-virtual {v9, v10, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "channel-count"

    iget v10, p2, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v9, v5, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "sample-rate"

    iget v10, p2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v9, v5, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v5, p2, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v9, v5}, Lk0/r;->c(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v5, "max-input-size"

    invoke-static {v9, v5, v6}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 v5, 0x17

    if-lt v2, v5, :cond_8

    const-string v6, "priority"

    invoke-virtual {v9, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_8

    if-ne v2, v5, :cond_7

    sget-object v5, Lk0/C;->d:Ljava/lang/String;

    const-string v6, "ZTE B2017G"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "AXON 7 mini"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const-string v5, "operating-rate"

    invoke-virtual {v9, v5, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    :goto_5
    const/16 v0, 0x1c

    if-gt v2, v0, :cond_9

    const-string v0, "audio/ac4"

    iget-object v5, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ac4-is-sync"

    invoke-virtual {v9, v0, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    if-lt v2, v4, :cond_a

    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    iget v4, p2, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v5, 0x4

    invoke-static {v5, v0, v4}, Lk0/C;->A(III)Landroidx/media3/common/Format;

    move-result-object v0

    iget-object v4, p0, Lr0/K;->E0:Lr0/s;

    check-cast v4, Lr0/G;

    invoke-virtual {v4, v0}, Lr0/G;->j(Landroidx/media3/common/Format;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_a

    const-string v0, "pcm-encoding"

    invoke-virtual {v9, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/16 v0, 0x20

    if-lt v2, v0, :cond_b

    const-string v0, "max-output-channel-count"

    const/16 v4, 0x63

    invoke-virtual {v9, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/16 v0, 0x23

    if-lt v2, v0, :cond_c

    iget v0, p0, Lr0/K;->P0:I

    neg-int v0, v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "importance"

    invoke-virtual {v9, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    iget-object v0, p1, Ly0/o;->b:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move-object v0, p2

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lr0/K;->K0:Landroidx/media3/common/Format;

    new-instance v0, LD5/g;

    const/4 v4, 0x0

    iget-object v6, p0, Lr0/K;->F0:Lr0/C;

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v2, v9

    invoke-direct/range {v0 .. v6}, LD5/g;-><init>(Ly0/o;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Lr0/C;)V

    return-object v0
.end method

.method public final q(Lp0/f;)V
    .locals 4

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lp0/f;->r:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ly0/t;->g0:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lp0/f;->w:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lp0/f;->r:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lr0/K;->E0:Lr0/s;

    check-cast v1, Lr0/G;

    iget-object v2, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lr0/G;->q(Landroid/media/AudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lr0/G;->u:Lr0/B;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lr0/B;->k:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    invoke-static {v1, p1, v0}, Landroidx/lifecycle/D;->n(Landroid/media/AudioTrack;II)V

    :cond_0
    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Lr0/K;->E0:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0, p1}, Lr0/G;->C(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final v(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lr0/i;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lr0/i;-><init>(Lp5/p;Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final w(JJLjava/lang/String;)V
    .locals 9

    iget-object v1, p0, Lr0/K;->D0:Lp5/p;

    iget-object v0, v1, Lp5/p;->q:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/Handler;

    if-eqz v8, :cond_0

    new-instance v0, LG0/E;

    const/4 v7, 0x1

    move-wide v3, p1

    move-wide v5, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v7}, LG0/E;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lr0/K;->D0:Lp5/p;

    iget-object v1, v0, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, LA/o;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3, p1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final y(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 5

    iget-object v0, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lr0/K;->J0:Landroidx/media3/common/Format;

    invoke-super {p0, p1}, Ly0/t;->y(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object p1

    iget-object v1, p0, Lr0/K;->D0:Lp5/p;

    iget-object v2, v1, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_0

    new-instance v3, LG0/n;

    const/4 v4, 0x6

    invoke-direct {v3, v1, v0, p1, v4}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p1
.end method

.method public final z(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 7

    iget-object v0, p0, Lr0/K;->K0:Landroidx/media3/common/Format;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    goto :goto_0

    :cond_2
    sget v0, Lk0/C;->a:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lk0/C;->z(I)I

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v5

    :goto_0
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v6, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setCustomData(Ljava/lang/Object;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v4, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v4, p1, Landroidx/media3/common/Format;->roleFlags:I

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v4, "channel-count"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v4, "sample-rate"

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    iget-boolean v0, p0, Lr0/K;->H0:Z

    const/4 v4, 0x6

    if-eqz v0, :cond_6

    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v4, :cond_6

    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ge v0, v4, :cond_6

    new-array v3, v0, [I

    move v0, v2

    :goto_1
    iget v4, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ge v0, v4, :cond_5

    aput v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object p1, p2

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lr0/K;->I0:Z

    if-eqz p1, :cond_5

    iget p1, p2, Landroidx/media3/common/Format;->channelCount:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v6, 0x5

    if-eq p1, v6, :cond_a

    if-eq p1, v4, :cond_9

    const/4 v0, 0x7

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    goto :goto_2

    :cond_7
    new-array v3, v0, [I

    fill-array-data v3, :array_0

    goto :goto_2

    :cond_8
    new-array v3, v0, [I

    fill-array-data v3, :array_1

    goto :goto_2

    :cond_9
    new-array v3, v4, [I

    fill-array-data v3, :array_2

    goto :goto_2

    :cond_a
    const/4 p1, 0x4

    filled-new-array {v2, v5, v1, v0, p1}, [I

    move-result-object v3

    goto :goto_2

    :cond_b
    filled-new-array {v2, v5, v1}, [I

    move-result-object v3

    goto :goto_2

    :goto_3
    :try_start_0
    sget p2, Lk0/C;->a:I
    :try_end_0
    .catch Lr0/n; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x1d

    iget-object v4, p0, Lr0/K;->E0:Lr0/s;

    if-lt p2, v0, :cond_f

    :try_start_1
    iget-boolean v5, p0, Ly0/t;->g0:Z

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object v5

    iget v5, v5, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object v5

    iget v5, v5, Landroidx/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    move-object v6, v4

    check-cast v6, Lr0/G;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt p2, v0, :cond_c

    goto :goto_4

    :cond_c
    move v1, v2

    :goto_4
    invoke-static {v1}, Lk0/c;->j(Z)V

    iput v5, v6, Lr0/G;->k:I

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_d
    move-object v5, v4

    check-cast v5, Lr0/G;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lt p2, v0, :cond_e

    goto :goto_5

    :cond_e
    move v1, v2

    :goto_5
    invoke-static {v1}, Lk0/c;->j(Z)V

    iput v2, v5, Lr0/G;->k:I

    :cond_f
    :goto_6
    check-cast v4, Lr0/G;

    invoke-virtual {v4, p1, v3}, Lr0/G;->d(Landroidx/media3/common/Format;[I)V
    :try_end_1
    .catch Lr0/n; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_7
    iget-object p2, p1, Lr0/n;->b:Landroidx/media3/common/Format;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method
