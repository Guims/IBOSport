.class public abstract Ly0/t;
.super Landroidx/media3/exoplayer/BaseRenderer;


# static fields
.field public static final B0:[B


# instance fields
.field public A:Landroidx/media3/common/Format;

.field public A0:Z

.field public B:Landroidx/media3/common/Format;

.field public C:Lu0/j;

.field public D:Lu0/j;

.field public E:Landroidx/media3/exoplayer/Renderer$WakeupListener;

.field public F:Landroid/media/MediaCrypto;

.field public final G:J

.field public H:F

.field public I:F

.field public J:Ly0/l;

.field public K:Landroidx/media3/common/Format;

.field public L:Landroid/media/MediaFormat;

.field public M:Z

.field public N:F

.field public O:Ljava/util/ArrayDeque;

.field public P:Ly0/q;

.field public Q:Ly0/o;

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:J

.field public Z:Z

.field public a0:J

.field public final b:Ly0/k;

.field public b0:I

.field public c0:I

.field public d0:Ljava/nio/ByteBuffer;

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:Z

.field public o0:Z

.field public p0:Z

.field public final q:Ly0/u;

.field public q0:J

.field public final r:Z

.field public r0:J

.field public final s:F

.field public s0:Z

.field public final t:Lp0/f;

.field public t0:Z

.field public final u:Lp0/f;

.field public u0:Z

.field public final v:Lp0/f;

.field public v0:Z

.field public final w:Ly0/g;

.field public w0:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public final x:Landroid/media/MediaCodec$BufferInfo;

.field public x0:Landroidx/media3/exoplayer/DecoderCounters;

.field public final y:Ljava/util/ArrayDeque;

.field public y0:Ly0/s;

.field public final z:Lr0/L;

.field public z0:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ly0/t;->B0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILy0/k;Ly0/u;ZF)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p2, p0, Ly0/t;->b:Ly0/k;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ly0/t;->q:Ly0/u;

    iput-boolean p4, p0, Ly0/t;->r:Z

    iput p5, p0, Ly0/t;->s:F

    new-instance p1, Lp0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Ly0/t;->t:Lp0/f;

    new-instance p1, Lp0/f;

    invoke-direct {p1, p2, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Ly0/t;->u:Lp0/f;

    new-instance p1, Lp0/f;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Ly0/t;->v:Lp0/f;

    new-instance p1, Ly0/g;

    invoke-direct {p1, p3, p2}, Lp0/f;-><init>(II)V

    const/16 p4, 0x20

    iput p4, p1, Ly0/g;->B:I

    iput-object p1, p0, Ly0/t;->w:Ly0/g;

    new-instance p4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p4, p0, Ly0/t;->x:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Ly0/t;->H:F

    iput p4, p0, Ly0/t;->I:F

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p4, p0, Ly0/t;->G:J

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ly0/t;->y:Ljava/util/ArrayDeque;

    sget-object v0, Ly0/s;->e:Ly0/s;

    iput-object v0, p0, Ly0/t;->y0:Ly0/s;

    invoke-virtual {p1, p2}, Lp0/f;->m(I)V

    iget-object p1, p1, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Lr0/L;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v0, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lr0/L;->a:Ljava/nio/ByteBuffer;

    iput p2, p1, Lr0/L;->c:I

    iput p3, p1, Lr0/L;->b:I

    iput-object p1, p0, Ly0/t;->z:Lr0/L;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Ly0/t;->N:F

    iput p2, p0, Ly0/t;->R:I

    iput p2, p0, Ly0/t;->k0:I

    const/4 p1, -0x1

    iput p1, p0, Ly0/t;->b0:I

    iput p1, p0, Ly0/t;->c0:I

    iput-wide p4, p0, Ly0/t;->a0:J

    iput-wide p4, p0, Ly0/t;->q0:J

    iput-wide p4, p0, Ly0/t;->r0:J

    iput-wide p4, p0, Ly0/t;->z0:J

    iput-wide p4, p0, Ly0/t;->Y:J

    iput p2, p0, Ly0/t;->l0:I

    iput p2, p0, Ly0/t;->m0:I

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B(J)V
    .locals 3

    iput-wide p1, p0, Ly0/t;->z0:J

    :goto_0
    iget-object v0, p0, Ly0/t;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/s;

    iget-wide v1, v1, Ly0/s;->a:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ly0/t;->N(Ly0/s;)V

    invoke-virtual {p0}, Ly0/t;->C()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract C()V
.end method

.method public D(Lp0/f;)V
    .locals 0

    return-void
.end method

.method public E(Landroidx/media3/common/Format;)V
    .locals 0

    return-void
.end method

.method public final F()V
    .locals 3

    iget v0, p0, Ly0/t;->m0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Ly0/t;->t0:Z

    invoke-virtual {p0}, Ly0/t;->J()V

    return-void

    :cond_0
    invoke-virtual {p0}, Ly0/t;->I()V

    invoke-virtual {p0}, Ly0/t;->t()V

    return-void

    :cond_1
    invoke-virtual {p0}, Ly0/t;->h()V

    invoke-virtual {p0}, Ly0/t;->U()V

    return-void

    :cond_2
    invoke-virtual {p0}, Ly0/t;->h()V

    return-void
.end method

.method public abstract G(JJLy0/l;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
.end method

.method public final H(I)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    iget-object v1, p0, Ly0/t;->t:Lp0/f;

    invoke-virtual {v1}, Lp0/f;->k()V

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result p1

    const/4 v3, -0x5

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v0}, Ly0/t;->y(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return v4

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1, v2}, LU2/e;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Ly0/t;->s0:Z

    invoke-virtual {p0}, Ly0/t;->F()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final I()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ly0/t;->J:Ly0/l;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ly0/l;->release()V

    iget-object v1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget-object v1, p0, Ly0/t;->Q:Ly0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ly0/t;->x(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iput-object v0, p0, Ly0/t;->J:Ly0/l;

    :try_start_1
    iget-object v1, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Ly0/t;->M(Lu0/j;)V

    invoke-virtual {p0}, Ly0/t;->L()V

    return-void

    :goto_2
    iput-object v0, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Ly0/t;->M(Lu0/j;)V

    invoke-virtual {p0}, Ly0/t;->L()V

    throw v1

    :goto_3
    iput-object v0, p0, Ly0/t;->J:Ly0/l;

    :try_start_2
    iget-object v2, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    iput-object v0, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Ly0/t;->M(Lu0/j;)V

    invoke-virtual {p0}, Ly0/t;->L()V

    throw v1

    :goto_5
    iput-object v0, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v0}, Ly0/t;->M(Lu0/j;)V

    invoke-virtual {p0}, Ly0/t;->L()V

    throw v1
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public K()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Ly0/t;->b0:I

    iget-object v1, p0, Ly0/t;->u:Lp0/f;

    const/4 v2, 0x0

    iput-object v2, v1, Lp0/f;->t:Ljava/nio/ByteBuffer;

    iput v0, p0, Ly0/t;->c0:I

    iput-object v2, p0, Ly0/t;->d0:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Ly0/t;->a0:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Ly0/t;->o0:Z

    iput-wide v0, p0, Ly0/t;->Y:J

    iput-boolean v2, p0, Ly0/t;->n0:Z

    iput-boolean v2, p0, Ly0/t;->V:Z

    iput-boolean v2, p0, Ly0/t;->W:Z

    iput-boolean v2, p0, Ly0/t;->e0:Z

    iput-boolean v2, p0, Ly0/t;->f0:Z

    iput-wide v0, p0, Ly0/t;->q0:J

    iput-wide v0, p0, Ly0/t;->r0:J

    iput-wide v0, p0, Ly0/t;->z0:J

    iput v2, p0, Ly0/t;->l0:I

    iput v2, p0, Ly0/t;->m0:I

    iget-boolean v0, p0, Ly0/t;->j0:Z

    iput v0, p0, Ly0/t;->k0:I

    return-void
.end method

.method public final L()V
    .locals 2

    invoke-virtual {p0}, Ly0/t;->K()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly0/t;->w0:Landroidx/media3/exoplayer/ExoPlaybackException;

    iput-object v0, p0, Ly0/t;->O:Ljava/util/ArrayDeque;

    iput-object v0, p0, Ly0/t;->Q:Ly0/o;

    iput-object v0, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    iput-object v0, p0, Ly0/t;->L:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly0/t;->M:Z

    iput-boolean v0, p0, Ly0/t;->p0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Ly0/t;->N:F

    iput v0, p0, Ly0/t;->R:I

    iput-boolean v0, p0, Ly0/t;->S:Z

    iput-boolean v0, p0, Ly0/t;->T:Z

    iput-boolean v0, p0, Ly0/t;->U:Z

    iput-boolean v0, p0, Ly0/t;->X:Z

    iput-boolean v0, p0, Ly0/t;->Z:Z

    iput-boolean v0, p0, Ly0/t;->j0:Z

    iput v0, p0, Ly0/t;->k0:I

    return-void
.end method

.method public final M(Lu0/j;)V
    .locals 1

    iget-object v0, p0, Ly0/t;->C:Lu0/j;

    invoke-static {v0, p1}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object p1, p0, Ly0/t;->C:Lu0/j;

    return-void
.end method

.method public final N(Ly0/s;)V
    .locals 4

    iput-object p1, p0, Ly0/t;->y0:Ly0/s;

    iget-wide v0, p1, Ly0/s;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly0/t;->A0:Z

    invoke-virtual {p0}, Ly0/t;->A()V

    :cond_0
    return-void
.end method

.method public final O(J)Z
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v2, p0, Ly0/t;->G:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object v0

    check-cast v0, Lk0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public P(Ly0/o;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public Q(Lp0/f;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public R(Landroidx/media3/common/Format;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract S(Ly0/u;Landroidx/media3/common/Format;)I
.end method

.method public final T(Landroidx/media3/common/Format;)Z
    .locals 5

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    if-eqz v0, :cond_6

    iget v0, p0, Ly0/t;->m0:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Ly0/t;->I:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ly0/t;->m(F[Landroidx/media3/common/Format;)F

    move-result p1

    iget v0, p0, Ly0/t;->N:F

    cmpl-float v3, v0, p1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, p1, v3

    if-nez v4, :cond_4

    iget-boolean p1, p0, Ly0/t;->n0:Z

    if-eqz p1, :cond_3

    iput v2, p0, Ly0/t;->l0:I

    iput v1, p0, Ly0/t;->m0:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ly0/t;->I()V

    invoke-virtual {p0}, Ly0/t;->t()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    iget v0, p0, Ly0/t;->s:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Ly0/t;->J:Ly0/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Ly0/l;->b(Landroid/os/Bundle;)V

    iput p1, p0, Ly0/t;->N:F

    :cond_6
    :goto_1
    return v2
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Ly0/t;->D:Lu0/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lu0/j;->h()Lp0/a;

    move-result-object v0

    instance-of v1, v0, Lu0/y;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lu0/y;

    iget-object v0, v0, Lu0/y;->b:[B

    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Ly0/t;->D:Lu0/j;

    invoke-virtual {p0, v0}, Ly0/t;->M(Lu0/j;)V

    const/4 v0, 0x0

    iput v0, p0, Ly0/t;->l0:I

    iput v0, p0, Ly0/t;->m0:I

    return-void
.end method

.method public final V(J)V
    .locals 1

    iget-object v0, p0, Ly0/t;->y0:Ly0/s;

    iget-object v0, v0, Ly0/s;->d:LB4/p;

    invoke-virtual {v0, p1, p2}, LB4/p;->f(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    if-nez p1, :cond_0

    iget-boolean p2, p0, Ly0/t;->A0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Ly0/t;->L:Landroid/media/MediaFormat;

    if-eqz p2, :cond_0

    iget-object p1, p0, Ly0/t;->y0:Ly0/s;

    iget-object p1, p1, Ly0/s;->d:LB4/p;

    invoke-virtual {p1}, LB4/p;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Format;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Ly0/t;->B:Landroidx/media3/common/Format;

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Ly0/t;->M:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Ly0/t;->B:Landroidx/media3/common/Format;

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Ly0/t;->L:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Ly0/t;->z(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly0/t;->M:Z

    iput-boolean p1, p0, Ly0/t;->A0:Z

    :cond_2
    return-void
.end method

.method public final a(JJ)Z
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ly0/t;->t0:Z

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, Lk0/c;->j(Z)V

    iget-object v1, v0, Ly0/t;->w:Ly0/g;

    invoke-virtual {v1}, Ly0/g;->p()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iget-object v6, v1, Lp0/f;->t:Ljava/nio/ByteBuffer;

    iget v7, v0, Ly0/t;->c0:I

    iget v9, v1, Ly0/g;->A:I

    iget-wide v10, v1, Lp0/f;->v:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v12

    iget-wide v4, v1, Ly0/g;->z:J

    invoke-virtual {v0, v12, v13, v4, v5}, Ly0/t;->s(JJ)Z

    move-result v12

    invoke-virtual {v1, v3}, LU2/e;->c(I)Z

    move-result v13

    iget-object v14, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move-object v15, v1

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, Ly0/t;->G(JJLy0/l;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v15, Ly0/g;->z:J

    invoke-virtual {v0, v1, v2}, Ly0/t;->B(J)V

    invoke-virtual {v15}, Ly0/g;->k()V

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_14

    :cond_1
    move-object v15, v1

    :goto_0
    iget-boolean v1, v0, Ly0/t;->s0:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Ly0/t;->t0:Z

    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, 0x0

    iget-boolean v1, v0, Ly0/t;->h0:Z

    iget-object v3, v0, Ly0/t;->v:Lp0/f;

    if-eqz v1, :cond_3

    invoke-virtual {v15, v3}, Ly0/g;->o(Lp0/f;)Z

    move-result v1

    invoke-static {v1}, Lk0/c;->j(Z)V

    iput-boolean v2, v0, Ly0/t;->h0:Z

    :cond_3
    iget-boolean v1, v0, Ly0/t;->i0:Z

    if-eqz v1, :cond_6

    invoke-virtual {v15}, Ly0/g;->p()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    const/16 v17, 0x1

    goto/16 :goto_15

    :cond_5
    invoke-virtual {v0}, Ly0/t;->d()V

    iput-boolean v2, v0, Ly0/t;->i0:Z

    invoke-virtual {v0}, Ly0/t;->t()V

    iget-boolean v1, v0, Ly0/t;->g0:Z

    if-nez v1, :cond_6

    move/from16 v16, v2

    goto/16 :goto_14

    :cond_6
    iget-boolean v1, v0, Ly0/t;->s0:Z

    const/16 v17, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lk0/c;->j(Z)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v1

    invoke-virtual {v3}, Lp0/f;->k()V

    :goto_2
    invoke-virtual {v3}, Lp0/f;->k()V

    invoke-virtual {v0, v1, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_21

    const/4 v5, -0x4

    if-eq v4, v5, :cond_8

    const/4 v1, -0x3

    if-ne v4, v1, :cond_7

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-wide v3, v0, Ly0/t;->q0:J

    iput-wide v3, v0, Ly0/t;->r0:J

    goto/16 :goto_13

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_8
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, LU2/e;->c(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    iput-boolean v5, v0, Ly0/t;->s0:Z

    iget-wide v3, v0, Ly0/t;->q0:J

    iput-wide v3, v0, Ly0/t;->r0:J

    goto/16 :goto_13

    :cond_9
    iget-wide v5, v0, Ly0/t;->q0:J

    iget-wide v7, v3, Lp0/f;->v:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Ly0/t;->q0:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, Ly0/t;->u:Lp0/f;

    const/high16 v6, 0x20000000

    invoke-virtual {v5, v6}, LU2/e;->c(I)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-wide v5, v0, Ly0/t;->q0:J

    iput-wide v5, v0, Ly0/t;->r0:J

    :cond_b
    iget-boolean v5, v0, Ly0/t;->u0:Z

    const/16 v6, 0x8

    const/16 v7, 0xff

    const/4 v8, 0x0

    const-string v9, "audio/opus"

    if-eqz v5, :cond_d

    iget-object v5, v0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    const/16 v10, 0xb

    aget-byte v10, v5, v10

    and-int/2addr v10, v7

    shl-int/2addr v10, v6

    const/16 v11, 0xa

    aget-byte v5, v5, v11

    and-int/2addr v5, v7

    or-int/2addr v5, v10

    iget-object v10, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    iput-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    :cond_c
    iget-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {v0, v5, v8}, Ly0/t;->z(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iput-boolean v2, v0, Ly0/t;->u0:Z

    :cond_d
    invoke-virtual {v3}, Lp0/f;->n()V

    iget-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    if-eqz v5, :cond_1d

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, LU2/e;->c(I)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    iput-object v5, v3, Lp0/f;->r:Landroidx/media3/common/Format;

    invoke-virtual {v0, v3}, Ly0/t;->q(Lp0/f;)V

    :cond_e
    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v9

    iget-wide v11, v3, Lp0/f;->v:J

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x13880

    cmp-long v5, v9, v11

    if-gtz v5, :cond_1d

    iget-object v5, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iget-object v9, v0, Ly0/t;->z:Lr0/L;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    move-result v10

    iget-object v11, v3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    move-result v11

    sub-int/2addr v10, v11

    if-nez v10, :cond_f

    goto/16 :goto_10

    :cond_f
    iget v10, v9, Lr0/L;->b:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x3

    if-ne v10, v12, :cond_11

    :cond_10
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [B

    :cond_11
    iget-object v5, v3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v10

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v12

    sub-int v13, v12, v10

    add-int/lit16 v14, v13, 0xff

    div-int/2addr v14, v7

    add-int/lit8 v16, v14, 0x1b

    add-int v16, v16, v13

    iget v4, v9, Lr0/L;->b:I

    if-ne v4, v11, :cond_13

    if-eqz v8, :cond_12

    array-length v4, v8

    add-int/lit8 v4, v4, 0x1c

    goto :goto_3

    :cond_12
    const/16 v4, 0x2f

    :goto_3
    add-int/lit8 v18, v4, 0x2c

    add-int v16, v18, v16

    :goto_4
    move/from16 p1, v6

    move/from16 v6, v16

    goto :goto_5

    :cond_13
    move v4, v2

    goto :goto_4

    :goto_5
    iget-object v7, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_14

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_14
    iget-object v6, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_6
    iget-object v6, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    iget v7, v9, Lr0/L;->b:I

    if-ne v7, v11, :cond_17

    if-eqz v8, :cond_16

    const/16 v22, 0x1

    const/16 v23, 0x1

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v6

    invoke-static/range {v18 .. v23}, Lr0/L;->a(Ljava/nio/ByteBuffer;JIIZ)V

    array-length v7, v8

    move/from16 p4, v12

    int-to-long v11, v7

    shr-long v18, v11, p1

    const-wide/16 v20, 0x0

    cmp-long v7, v18, v20

    if-nez v7, :cond_15

    const/4 v7, 0x1

    goto :goto_7

    :cond_15
    const/4 v7, 0x0

    :goto_7
    const-string v2, "out of range: %s"

    invoke-static {v11, v12, v7, v2}, LH3/u0;->c(JZLjava/lang/String;)V

    long-to-int v2, v11

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    array-length v11, v8

    add-int/lit8 v11, v11, 0x1c

    const/4 v12, 0x0

    invoke-static {v7, v11, v12, v2}, Lk0/C;->l(III[B)I

    move-result v2

    const/16 v7, 0x16

    invoke-virtual {v6, v7, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    array-length v2, v8

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    :cond_16
    move/from16 p4, v12

    sget-object v2, Lr0/L;->d:[B

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_8
    sget-object v2, Lr0/L;->e:[B

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_17
    move/from16 p4, v12

    goto :goto_9

    :goto_a
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v12, 0x1

    if-le v2, v12, :cond_18

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    invoke-static {v7, v2}, LI0/b;->g(BB)J

    move-result-wide v7

    const-wide/32 v11, 0xbb80

    mul-long/2addr v7, v11

    const-wide/32 v11, 0xf4240

    div-long/2addr v7, v11

    long-to-int v2, v7

    iget v7, v9, Lr0/L;->c:I

    add-int/2addr v7, v2

    iput v7, v9, Lr0/L;->c:I

    int-to-long v7, v7

    iget v2, v9, Lr0/L;->b:I

    const/16 v23, 0x0

    move/from16 v21, v2

    move-object/from16 v18, v6

    move-wide/from16 v19, v7

    move/from16 v22, v14

    invoke-static/range {v18 .. v23}, Lr0/L;->a(Ljava/nio/ByteBuffer;JIIZ)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v14, :cond_1a

    const/16 v7, 0xff

    if-lt v13, v7, :cond_19

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit16 v8, v13, -0xff

    move v13, v8

    goto :goto_d

    :cond_19
    int-to-byte v8, v13

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v13, 0x0

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    move/from16 v2, p4

    :goto_e
    if-ge v10, v2, :cond_1b

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v2, v9, Lr0/L;->b:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x2c

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v7

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v12, 0x0

    invoke-static {v5, v7, v12, v2}, Lk0/C;->l(III[B)I

    move-result v2

    add-int/lit8 v4, v4, 0x42

    invoke-virtual {v6, v4, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_f

    :cond_1c
    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v4, v5, v12, v2}, Lk0/C;->l(III[B)I

    move-result v2

    const/16 v7, 0x16

    invoke-virtual {v6, v7, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_f
    iget v2, v9, Lr0/L;->b:I

    const/16 v17, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lr0/L;->b:I

    iput-object v6, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lp0/f;->k()V

    iget-object v2, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v3, v2}, Lp0/f;->m(I)V

    iget-object v2, v3, Lp0/f;->t:Ljava/nio/ByteBuffer;

    iget-object v4, v9, Lr0/L;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lp0/f;->n()V

    :cond_1d
    :goto_10
    invoke-virtual {v15}, Ly0/g;->p()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_11

    :cond_1e
    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v4

    iget-wide v6, v15, Ly0/g;->z:J

    invoke-virtual {v0, v4, v5, v6, v7}, Ly0/t;->s(JJ)Z

    move-result v2

    iget-wide v6, v3, Lp0/f;->v:J

    invoke-virtual {v0, v4, v5, v6, v7}, Ly0/t;->s(JJ)Z

    move-result v4

    if-ne v2, v4, :cond_1f

    :goto_11
    invoke-virtual {v15, v3}, Ly0/g;->o(Lp0/f;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1f
    const/4 v12, 0x1

    goto :goto_12

    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_2

    :goto_12
    iput-boolean v12, v0, Ly0/t;->h0:Z

    goto :goto_13

    :cond_21
    invoke-virtual {v0, v1}, Ly0/t;->y(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    :cond_22
    :goto_13
    invoke-virtual {v15}, Ly0/g;->p()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v15}, Lp0/f;->n()V

    :cond_23
    invoke-virtual {v15}, Ly0/g;->p()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Ly0/t;->s0:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Ly0/t;->i0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :goto_14
    return v16

    :goto_15
    return v17
.end method

.method public abstract b(Ly0/o;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
.end method

.method public c(Ljava/lang/IllegalStateException;Ly0/o;)Ly0/n;
    .locals 1

    new-instance v0, Ly0/n;

    invoke-direct {v0, p1, p2}, Ly0/n;-><init>(Ljava/lang/IllegalStateException;Ly0/o;)V

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly0/t;->i0:Z

    iget-object v1, p0, Ly0/t;->w:Ly0/g;

    invoke-virtual {v1}, Ly0/g;->k()V

    iget-object v1, p0, Ly0/t;->v:Lp0/f;

    invoke-virtual {v1}, Lp0/f;->k()V

    iput-boolean v0, p0, Ly0/t;->h0:Z

    iput-boolean v0, p0, Ly0/t;->g0:Z

    iget-object v1, p0, Ly0/t;->z:Lr0/L;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object v2, v1, Lr0/L;->a:Ljava/nio/ByteBuffer;

    iput v0, v1, Lr0/L;->c:I

    const/4 v0, 0x2

    iput v0, v1, Lr0/L;->b:I

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-boolean v0, p0, Ly0/t;->n0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Ly0/t;->l0:I

    iget-boolean v0, p0, Ly0/t;->T:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Ly0/t;->m0:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Ly0/t;->m0:I

    return v1

    :cond_1
    invoke-virtual {p0}, Ly0/t;->U()V

    return v1
.end method

.method public final f(JJ)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v5, v0, Ly0/t;->J:Ly0/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Ly0/t;->c0:I

    const/4 v15, 0x1

    const/4 v2, 0x0

    iget-object v3, v0, Ly0/t;->x:Landroid/media/MediaCodec$BufferInfo;

    if-ltz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v1, v0, Ly0/t;->U:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ly0/t;->o0:Z

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v5, v3}, Ly0/l;->n(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Ly0/t;->F()V

    iget-boolean v1, v0, Ly0/t;->t0:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ly0/t;->I()V

    :cond_1
    move/from16 v16, v2

    goto/16 :goto_6

    :cond_2
    invoke-interface {v5, v3}, Ly0/l;->n(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v1, :cond_7

    const/4 v3, -0x2

    if-ne v1, v3, :cond_4

    iput-boolean v15, v0, Ly0/t;->p0:Z

    iget-object v1, v0, Ly0/t;->J:Ly0/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ly0/l;->f()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v0, Ly0/t;->R:I

    if-eqz v2, :cond_3

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    iput-boolean v15, v0, Ly0/t;->W:Z

    return v15

    :cond_3
    iput-object v1, v0, Ly0/t;->L:Landroid/media/MediaFormat;

    iput-boolean v15, v0, Ly0/t;->M:Z

    return v15

    :cond_4
    iget-boolean v1, v0, Ly0/t;->X:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Ly0/t;->s0:Z

    if-nez v1, :cond_5

    iget v1, v0, Ly0/t;->l0:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Ly0/t;->F()V

    :cond_6
    iget-wide v3, v0, Ly0/t;->Y:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object v1

    check-cast v1, Lk0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ly0/t;->F()V

    return v2

    :cond_7
    iget-boolean v4, v0, Ly0/t;->W:Z

    if-eqz v4, :cond_8

    iput-boolean v2, v0, Ly0/t;->W:Z

    invoke-interface {v5, v1}, Ly0/l;->d(I)V

    return v15

    :cond_8
    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_9

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Ly0/t;->F()V

    return v2

    :cond_9
    iput v1, v0, Ly0/t;->c0:I

    invoke-interface {v5, v1}, Ly0/l;->s(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Ly0/t;->d0:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_a

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Ly0/t;->d0:Ljava/nio/ByteBuffer;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_a
    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-gez v1, :cond_b

    move v1, v15

    goto :goto_1

    :cond_b
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Ly0/t;->e0:Z

    iget-wide v8, v0, Ly0/t;->r0:J

    cmp-long v1, v8, v6

    if-eqz v1, :cond_c

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v8, v6

    if-gtz v1, :cond_c

    move v1, v15

    goto :goto_2

    :cond_c
    move v1, v2

    :goto_2
    iput-boolean v1, v0, Ly0/t;->f0:Z

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v6, v7}, Ly0/t;->V(J)V

    :goto_3
    iget-boolean v1, v0, Ly0/t;->U:Z

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Ly0/t;->o0:Z

    if-eqz v1, :cond_d

    :try_start_1
    iget-object v6, v0, Ly0/t;->d0:Ljava/nio/ByteBuffer;

    iget v7, v0, Ly0/t;->c0:I

    iget v8, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Ly0/t;->e0:Z

    iget-boolean v13, v0, Ly0/t;->f0:Z

    iget-object v14, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x1

    move/from16 v16, v2

    move/from16 v17, v15

    move-wide/from16 v1, p1

    move-object v15, v3

    move-wide/from16 v3, p3

    :try_start_2
    invoke-virtual/range {v0 .. v14}, Ly0/t;->G(JJLy0/l;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move/from16 v16, v2

    :catch_2
    invoke-virtual {v0}, Ly0/t;->F()V

    iget-boolean v1, v0, Ly0/t;->t0:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ly0/t;->I()V

    goto :goto_6

    :cond_d
    move/from16 v16, v2

    move/from16 v17, v15

    move-object v15, v3

    iget-object v6, v0, Ly0/t;->d0:Ljava/nio/ByteBuffer;

    iget v7, v0, Ly0/t;->c0:I

    iget v8, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Ly0/t;->e0:Z

    iget-boolean v13, v0, Ly0/t;->f0:Z

    iget-object v14, v0, Ly0/t;->B:Landroidx/media3/common/Format;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Ly0/t;->G(JJLy0/l;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_11

    iget-wide v1, v15, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ly0/t;->B(J)V

    iget v1, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_e

    move/from16 v2, v17

    goto :goto_5

    :cond_e
    move/from16 v2, v16

    :goto_5
    if-nez v2, :cond_f

    iget-boolean v1, v0, Ly0/t;->o0:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Ly0/t;->f0:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object v1

    check-cast v1, Lk0/w;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Ly0/t;->Y:J

    :cond_f
    const/4 v1, -0x1

    iput v1, v0, Ly0/t;->c0:I

    const/4 v1, 0x0

    iput-object v1, v0, Ly0/t;->d0:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_10

    return v17

    :cond_10
    invoke-virtual {v0}, Ly0/t;->F()V

    :cond_11
    :goto_6
    return v16
.end method

.method public final g()Z
    .locals 14

    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    const/4 v6, 0x0

    if-eqz v0, :cond_1b

    iget v1, p0, Ly0/t;->l0:I

    const/4 v7, 0x2

    if-eq v1, v7, :cond_1b

    iget-boolean v1, p0, Ly0/t;->s0:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v1, p0, Ly0/t;->b0:I

    iget-object v8, p0, Ly0/t;->u:Lp0/f;

    if-gez v1, :cond_2

    invoke-interface {v0}, Ly0/l;->l()I

    move-result v1

    iput v1, p0, Ly0/t;->b0:I

    if-gez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-interface {v0, v1}, Ly0/l;->p(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Lp0/f;->k()V

    :cond_2
    iget v1, p0, Ly0/t;->l0:I

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v1, v11, :cond_4

    iget-boolean v1, p0, Ly0/t;->X:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v11, p0, Ly0/t;->o0:Z

    iget v1, p0, Ly0/t;->b0:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Ly0/l;->c(IIJI)V

    iput v10, p0, Ly0/t;->b0:I

    iput-object v9, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    :goto_0
    iput v7, p0, Ly0/t;->l0:I

    return v6

    :cond_4
    iget-boolean v1, p0, Ly0/t;->V:Z

    if-eqz v1, :cond_5

    iput-boolean v6, p0, Ly0/t;->V:Z

    iget-object v1, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ly0/t;->B0:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Ly0/t;->b0:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x26

    invoke-interface/range {v0 .. v5}, Ly0/l;->c(IIJI)V

    iput v10, p0, Ly0/t;->b0:I

    iput-object v9, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    iput-boolean v11, p0, Ly0/t;->n0:Z

    return v11

    :cond_5
    iget v1, p0, Ly0/t;->k0:I

    if-ne v1, v11, :cond_7

    move v1, v6

    :goto_1
    iget-object v2, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput v7, p0, Ly0/t;->k0:I

    :cond_7
    iget-object v1, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0, v2, v8, v6}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v3
    :try_end_0
    .catch Lp0/e; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x3

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Ly0/t;->q0:J

    iput-wide v0, p0, Ly0/t;->r0:J

    return v6

    :cond_8
    const/4 v4, -0x5

    if-ne v3, v4, :cond_a

    iget v0, p0, Ly0/t;->k0:I

    if-ne v0, v7, :cond_9

    invoke-virtual {v8}, Lp0/f;->k()V

    iput v11, p0, Ly0/t;->k0:I

    :cond_9
    invoke-virtual {p0, v2}, Ly0/t;->y(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return v11

    :cond_a
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, LU2/e;->c(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-wide v1, p0, Ly0/t;->q0:J

    iput-wide v1, p0, Ly0/t;->r0:J

    iget v1, p0, Ly0/t;->k0:I

    if-ne v1, v7, :cond_b

    invoke-virtual {v8}, Lp0/f;->k()V

    iput v11, p0, Ly0/t;->k0:I

    :cond_b
    iput-boolean v11, p0, Ly0/t;->s0:Z

    iget-boolean v1, p0, Ly0/t;->n0:Z

    if-nez v1, :cond_c

    invoke-virtual {p0}, Ly0/t;->F()V

    return v6

    :cond_c
    iget-boolean v1, p0, Ly0/t;->X:Z

    if-eqz v1, :cond_d

    goto/16 :goto_5

    :cond_d
    iput-boolean v11, p0, Ly0/t;->o0:Z

    iget v1, p0, Ly0/t;->b0:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Ly0/l;->c(IIJI)V

    iput v10, p0, Ly0/t;->b0:I

    iput-object v9, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    return v6

    :cond_e
    iget-boolean v2, p0, Ly0/t;->n0:Z

    if-nez v2, :cond_10

    invoke-virtual {v8, v11}, LU2/e;->c(I)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v8}, Lp0/f;->k()V

    iget v0, p0, Ly0/t;->k0:I

    if-ne v0, v7, :cond_f

    iput v11, p0, Ly0/t;->k0:I

    :cond_f
    return v11

    :cond_10
    invoke-virtual {p0, v8}, Ly0/t;->Q(Lp0/f;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v8}, Lp0/f;->k()V

    iget-object v0, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v1, v11

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    return v11

    :cond_11
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v8, v2}, LU2/e;->c(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v3, v8, Lp0/f;->s:Lp0/b;

    if-nez v1, :cond_12

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_12
    iget-object v4, v3, Lp0/b;->d:[I

    if-nez v4, :cond_13

    new-array v4, v11, [I

    iput-object v4, v3, Lp0/b;->d:[I

    iget-object v5, v3, Lp0/b;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v4, v5, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_13
    iget-object v3, v3, Lp0/b;->d:[I

    aget v4, v3, v6

    add-int/2addr v4, v1

    aput v4, v3, v6

    :cond_14
    :goto_2
    iget-wide v3, v8, Lp0/f;->v:J

    iget-boolean v1, p0, Ly0/t;->u0:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Ly0/t;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/s;

    iget-object v1, v1, Ly0/s;->d:LB4/p;

    iget-object v5, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, v3, v4}, LB4/p;->a(Ljava/lang/Object;J)V

    goto :goto_3

    :cond_15
    iget-object v1, p0, Ly0/t;->y0:Ly0/s;

    iget-object v1, v1, Ly0/s;->d:LB4/p;

    iget-object v5, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, v3, v4}, LB4/p;->a(Ljava/lang/Object;J)V

    :goto_3
    iput-boolean v6, p0, Ly0/t;->u0:Z

    :cond_16
    iget-wide v12, p0, Ly0/t;->q0:J

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, p0, Ly0/t;->q0:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v1

    if-nez v1, :cond_17

    const/high16 v1, 0x20000000

    invoke-virtual {v8, v1}, LU2/e;->c(I)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    iget-wide v12, p0, Ly0/t;->q0:J

    iput-wide v12, p0, Ly0/t;->r0:J

    :cond_18
    invoke-virtual {v8}, Lp0/f;->n()V

    const/high16 v1, 0x10000000

    invoke-virtual {v8, v1}, LU2/e;->c(I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0, v8}, Ly0/t;->q(Lp0/f;)V

    :cond_19
    invoke-virtual {p0, v8}, Ly0/t;->D(Lp0/f;)V

    invoke-virtual {p0, v8}, Ly0/t;->k(Lp0/f;)I

    move-result v5

    if-eqz v2, :cond_1a

    iget v1, p0, Ly0/t;->b0:I

    iget-object v2, v8, Lp0/f;->s:Lp0/b;

    invoke-interface/range {v0 .. v5}, Ly0/l;->a(ILp0/b;JI)V

    goto :goto_4

    :cond_1a
    iget v1, p0, Ly0/t;->b0:I

    iget-object v2, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-interface/range {v0 .. v5}, Ly0/l;->c(IIJI)V

    :goto_4
    iput v10, p0, Ly0/t;->b0:I

    iput-object v9, v8, Lp0/f;->t:Ljava/nio/ByteBuffer;

    iput-boolean v11, p0, Ly0/t;->n0:Z

    iput v6, p0, Ly0/t;->k0:I

    iget-object v0, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v11

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    return v11

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ly0/t;->v(Ljava/lang/Exception;)V

    invoke-virtual {p0, v6}, Ly0/t;->H(I)Z

    invoke-virtual {p0}, Ly0/t;->h()V

    return v11

    :cond_1b
    :goto_5
    return v6
.end method

.method public final getDurationToProgressUs(JJ)J
    .locals 6

    iget-boolean v5, p0, Ly0/t;->Z:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Ly0/t;->o(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v0}, Ly0/l;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ly0/t;->K()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ly0/t;->K()V

    throw v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    check-cast p2, Landroidx/media3/exoplayer/Renderer$WakeupListener;

    iput-object p2, p0, Ly0/t;->E:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final i()Z
    .locals 5

    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Ly0/t;->m0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Ly0/t;->S:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Ly0/t;->p0:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Ly0/t;->T:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Ly0/t;->o0:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lk0/C;->a:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    invoke-static {v4}, Lk0/c;->j(Z)V

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ly0/t;->U()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ly0/t;->I()V

    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ly0/t;->h()V

    return v1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Ly0/t;->I()V

    return v3
.end method

.method public isReady()Z
    .locals 4

    iget-object v0, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ly0/t;->c0:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ly0/t;->a0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object v0

    check-cast v0, Lk0/w;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ly0/t;->a0:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final j(Z)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ly0/t;->q:Ly0/u;

    invoke-virtual {p0, v1, v0, p1}, Ly0/t;->n(Ly0/u;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Ly0/t;->n(Ly0/u;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drm session requires secure decoder for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    return-object v2
.end method

.method public k(Lp0/f;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract m(F[Landroidx/media3/common/Format;)F
.end method

.method public abstract n(Ly0/u;Landroidx/media3/common/Format;Z)Ljava/util/ArrayList;
.end method

.method public o(JJZ)J
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public onDisabled()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    sget-object v0, Ly0/s;->e:Ly0/s;

    invoke-virtual {p0, v0}, Ly0/t;->N(Ly0/s;)V

    iget-object v0, p0, Ly0/t;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Ly0/t;->i()Z

    return-void
.end method

.method public onEnabled(ZZ)V
    .locals 0

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ly0/t;->s0:Z

    iput-boolean p1, p0, Ly0/t;->t0:Z

    iput-boolean p1, p0, Ly0/t;->v0:Z

    iget-boolean p2, p0, Ly0/t;->g0:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Ly0/t;->w:Ly0/g;

    invoke-virtual {p2}, Ly0/g;->k()V

    iget-object p2, p0, Ly0/t;->v:Lp0/f;

    invoke-virtual {p2}, Lp0/f;->k()V

    iput-boolean p1, p0, Ly0/t;->h0:Z

    iget-object p2, p0, Ly0/t;->z:Lr0/L;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Li0/d;->a:Ljava/nio/ByteBuffer;

    iput-object p3, p2, Lr0/L;->a:Ljava/nio/ByteBuffer;

    iput p1, p2, Lr0/L;->c:I

    const/4 p1, 0x2

    iput p1, p2, Lr0/L;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly0/t;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ly0/t;->t()V

    :cond_1
    :goto_0
    iget-object p1, p0, Ly0/t;->y0:Ly0/s;

    iget-object p1, p1, Ly0/s;->d:LB4/p;

    invoke-virtual {p1}, LB4/p;->h()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly0/t;->u0:Z

    :cond_2
    iget-object p1, p0, Ly0/t;->y0:Ly0/s;

    iget-object p1, p1, Ly0/s;->d:LB4/p;

    invoke-virtual {p1}, LB4/p;->b()V

    iget-object p1, p0, Ly0/t;->y:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public onReset()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ly0/t;->d()V

    invoke-virtual {p0}, Ly0/t;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ly0/t;->D:Lu0/j;

    invoke-static {v1, v0}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v0, p0, Ly0/t;->D:Lu0/j;

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ly0/t;->D:Lu0/j;

    invoke-static {v2, v0}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v0, p0, Ly0/t;->D:Lu0/j;

    throw v1
.end method

.method public onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V
    .locals 12

    iget-object p1, p0, Ly0/t;->y0:Ly0/s;

    iget-wide v0, p1, Ly0/s;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    new-instance v4, Ly0/s;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Ly0/s;-><init>(JJJ)V

    invoke-virtual {p0, v4}, Ly0/t;->N(Ly0/s;)V

    return-void

    :cond_0
    iget-object p1, p0, Ly0/t;->y:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Ly0/t;->q0:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Ly0/t;->z0:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v0, v4, v0

    if-ltz v0, :cond_3

    :cond_1
    new-instance v5, Ly0/s;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ly0/s;-><init>(JJJ)V

    invoke-virtual {p0, v5}, Ly0/t;->N(Ly0/s;)V

    iget-object p1, p0, Ly0/t;->y0:Ly0/s;

    iget-wide p1, p1, Ly0/s;->c:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ly0/t;->C()V

    :cond_2
    return-void

    :cond_3
    new-instance v5, Ly0/s;

    iget-wide v6, p0, Ly0/t;->q0:J

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ly0/s;-><init>(JJJ)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract p(Ly0/o;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)LD5/g;
.end method

.method public abstract q(Lp0/f;)V
.end method

.method public final r(Ly0/o;Landroid/media/MediaCrypto;)V
    .locals 12

    const-string v0, "createCodec:"

    iget-object v1, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p1, Ly0/o;->a:Ljava/lang/String;

    sget v2, Lk0/C;->a:I

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x17

    if-ge v2, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    iget v5, p0, Ly0/t;->I:F

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ly0/t;->m(F[Landroidx/media3/common/Format;)F

    move-result v5

    :goto_0
    iget v6, p0, Ly0/t;->s:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {p0, v1}, Ly0/t;->E(Landroidx/media3/common/Format;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object v5

    check-cast v5, Lk0/w;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p0, p1, v1, p2, v3}, Ly0/t;->p(Ly0/o;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)LD5/g;

    move-result-object p2

    const/16 v8, 0x1f

    if-lt v2, v8, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getPlayerId()Lq0/q;

    move-result-object v8

    iget-object v8, v8, Lq0/q;->b:Lq0/p;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lq0/p;->a:Landroid/media/metrics/LogSessionId;

    invoke-static {}, LJ/c;->f()Landroid/media/metrics/LogSessionId;

    invoke-static {v8}, Lq0/n;->x(Landroid/media/metrics/LogSessionId;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p2, LD5/g;->b:Ljava/lang/Object;

    check-cast v9, Landroid/media/MediaFormat;

    const-string v10, "log-session-id"

    invoke-static {v8}, Lq0/n;->n(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Ly0/t;->b:Ly0/k;

    invoke-interface {v0, p2}, Ly0/k;->a(LD5/g;)Ly0/l;

    move-result-object p2

    iput-object p2, p0, Ly0/t;->J:Ly0/l;

    new-instance v0, Ly0/r;

    invoke-direct {v0, p0}, Ly0/r;-><init>(Ly0/t;)V

    invoke-interface {p2, v0}, Ly0/l;->r(Ly0/r;)Z

    move-result p2

    iput-boolean p2, p0, Ly0/t;->Z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object p2

    check-cast p2, Lk0/w;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p2, v3

    move v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1, v1}, Ly0/o;->d(Landroidx/media3/common/Format;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v1}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Format exceeds selected codec\'s capabilities ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "MediaCodecRenderer"

    invoke-static {v9, v8}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Ly0/t;->Q:Ly0/o;

    iput p2, p0, Ly0/t;->N:F

    iput-object v1, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    const/4 p2, 0x2

    const/16 v1, 0x19

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v2, v1, :cond_5

    const-string v10, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lk0/C;->d:Ljava/lang/String;

    const-string v11, "SM-T585"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-A510"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-A520"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "SM-J700"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    move v10, p2

    goto :goto_2

    :cond_5
    const/16 v10, 0x18

    if-ge v2, v10, :cond_8

    const-string v10, "OMX.Nvidia.h264.decode"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_6
    sget-object v10, Lk0/C;->b:Ljava/lang/String;

    const-string v11, "flounder"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "flounder_lte"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "grouper"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "tilapia"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_7
    move v10, v9

    goto :goto_2

    :cond_8
    move v10, v8

    :goto_2
    iput v10, p0, Ly0/t;->R:I

    const/16 v10, 0x1d

    if-ne v2, v10, :cond_9

    const-string v11, "c2.android.aac.decoder"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v9

    goto :goto_3

    :cond_9
    move v11, v8

    :goto_3
    iput-boolean v11, p0, Ly0/t;->S:Z

    if-gt v2, v0, :cond_a

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v9

    goto :goto_4

    :cond_a
    move v0, v8

    :goto_4
    iput-boolean v0, p0, Ly0/t;->T:Z

    const/16 v0, 0x15

    if-ne v2, v0, :cond_b

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v9

    goto :goto_5

    :cond_b
    move v0, v8

    :goto_5
    iput-boolean v0, p0, Ly0/t;->U:Z

    iget-object v0, p1, Ly0/o;->a:Ljava/lang/String;

    if-gt v2, v1, :cond_c

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_c
    if-gt v2, v10, :cond_d

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    const-string v0, "Amazon"

    sget-object v1, Lk0/C;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "AFTS"

    sget-object v1, Lk0/C;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean p1, p1, Ly0/o;->f:Z

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Ly0/t;->l()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    :goto_6
    move v8, v9

    :cond_10
    iput-boolean v8, p0, Ly0/t;->X:Z

    iget-object p1, p0, Ly0/t;->J:Ly0/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    move-result p1

    if-ne p1, p2, :cond_11

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object p1

    check-cast p1, Lk0/w;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    iput-wide p1, p0, Ly0/t;->a0:J

    :cond_11
    iget-object p1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/2addr p2, v9

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    sub-long v5, v3, v5

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ly0/t;->w(JJLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p1
.end method

.method public render(JJ)V
    .locals 5

    iget-boolean v0, p0, Ly0/t;->v0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ly0/t;->v0:Z

    invoke-virtual {p0}, Ly0/t;->F()V

    :cond_0
    iget-object v0, p0, Ly0/t;->w0:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Ly0/t;->t0:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ly0/t;->J()V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_7

    :cond_1
    iget-object v2, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ly0/t;->H(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Ly0/t;->t()V

    iget-boolean v2, p0, Ly0/t;->g0:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ly0/t;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Ly0/t;->J:Ly0/l;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getClock()Lk0/d;

    move-result-object v2

    check-cast v2, Lk0/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ly0/t;->f(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v2, v3}, Ly0/t;->O(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Ly0/t;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2, v3}, Ly0/t;->O(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :cond_7
    iget-object p3, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    iget p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, v0}, Ly0/t;->H(I)Z

    :goto_3
    iget-object p1, p0, Ly0/t;->x0:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_4
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p3

    array-length p4, p3

    if-lez p4, :cond_c

    aget-object p3, p3, v1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "android.media.MediaCodec"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    :goto_5
    invoke-virtual {p0, p1}, Ly0/t;->v(Ljava/lang/Exception;)V

    if-eqz p2, :cond_9

    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    if-eqz p2, :cond_9

    move v1, v0

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Ly0/t;->I()V

    :cond_a
    iget-object p2, p0, Ly0/t;->Q:Ly0/o;

    invoke-virtual {p0, p1, p2}, Ly0/t;->c(Ljava/lang/IllegalStateException;Ly0/o;)Ly0/n;

    move-result-object p1

    iget p2, p1, Ly0/n;->b:I

    const/16 p3, 0x44d

    if-ne p2, p3, :cond_b

    const/16 p2, 0xfa6

    goto :goto_6

    :cond_b
    const/16 p2, 0xfa3

    :goto_6
    iget-object p3, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1, p3, v1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_c
    throw p1

    :goto_7
    iget-object p2, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p3

    invoke-static {p3}, Lk0/C;->u(I)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Ly0/t;->w0:Landroidx/media3/exoplayer/ExoPlaybackException;

    throw v0
.end method

.method public final s(JJ)Z
    .locals 2

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Ly0/t;->B:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sub-long/2addr p1, p3

    const-wide/32 p3, 0x13880

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0

    iput p1, p0, Ly0/t;->H:F

    iput p2, p0, Ly0/t;->I:F

    iget-object p1, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1}, Ly0/t;->T(Landroidx/media3/common/Format;)Z

    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Ly0/t;->q:Ly0/u;

    invoke-virtual {p0, v0, p1}, Ly0/t;->S(Ly0/u;Landroidx/media3/common/Format;)I

    move-result p1
    :try_end_0
    .catch Ly0/x; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/16 v1, 0xfa2

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final t()V
    .locals 7

    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Ly0/t;->g0:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Ly0/t;->D:Lu0/j;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ly0/t;->R(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ly0/t;->d()V

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, Ly0/t;->w:Ly0/g;

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, v3, Ly0/g;->B:I

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x20

    iput v0, v3, Ly0/g;->B:I

    :goto_0
    iput-boolean v2, p0, Ly0/t;->g0:Z

    return-void

    :cond_2
    iget-object v1, p0, Ly0/t;->D:Lu0/j;

    invoke-virtual {p0, v1}, Ly0/t;->M(Lu0/j;)V

    iget-object v1, p0, Ly0/t;->C:Lu0/j;

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    invoke-static {v1}, Lk0/c;->j(Z)V

    iget-object v1, p0, Ly0/t;->C:Lu0/j;

    invoke-interface {v1}, Lu0/j;->h()Lp0/a;

    move-result-object v5

    sget-boolean v6, Lu0/y;->c:Z

    if-eqz v6, :cond_5

    instance-of v6, v5, Lu0/y;

    if-eqz v6, :cond_5

    invoke-interface {v1}, Lu0/j;->getState()I

    move-result v6

    if-eq v6, v2, :cond_4

    if-eq v6, v3, :cond_5

    goto :goto_5

    :cond_4
    invoke-interface {v1}, Lu0/j;->g()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    iget v2, v0, Lu0/i;->b:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_5
    if-nez v5, :cond_6

    invoke-interface {v1}, Lu0/j;->g()Lu0/i;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_6
    instance-of v1, v5, Lu0/y;

    if-eqz v1, :cond_7

    check-cast v5, Lu0/y;

    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    iget-object v6, v5, Lu0/y;->a:Ljava/util/UUID;

    iget-object v5, v5, Lu0/y;->b:[B

    invoke-direct {v1, v6, v5}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, p0, Ly0/t;->F:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_2
    :try_start_1
    iget-object v1, p0, Ly0/t;->C:Lu0/j;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lu0/j;->getState()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    iget-object v1, p0, Ly0/t;->C:Lu0/j;

    invoke-interface {v1}, Lu0/j;->getState()I

    move-result v1

    if-ne v1, v3, :cond_9

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_6

    :cond_8
    :goto_3
    iget-object v1, p0, Ly0/t;->C:Lu0/j;

    iget-object v3, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Lu0/j;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v4

    :goto_4
    iget-object v1, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v1, v2}, Ly0/t;->u(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Ly0/q; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_5
    iget-object v0, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_b

    iget-object v1, p0, Ly0/t;->J:Ly0/l;

    if-nez v1, :cond_b

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly0/t;->F:Landroid/media/MediaCrypto;

    return-void

    :goto_6
    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_b
    :goto_7
    return-void
.end method

.method public final u(Landroid/media/MediaCrypto;Z)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v6, p2

    iget-object v9, v1, Ly0/t;->A:Landroidx/media3/common/Format;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Ly0/t;->O:Ljava/util/ArrayDeque;

    const/4 v10, 0x0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v1, v6}, Ly0/t;->j(Z)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Ly0/t;->O:Ljava/util/ArrayDeque;

    iget-boolean v3, v1, Ly0/t;->r:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Ly0/t;->O:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly0/o;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iput-object v10, v1, Ly0/t;->P:Ly0/q;
    :try_end_0
    .catch Ly0/x; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ly0/q;

    const v3, -0xc34e

    invoke-direct {v2, v9, v0, v6, v3}, Ly0/q;-><init>(Landroidx/media3/common/Format;Ly0/x;ZI)V

    throw v2

    :cond_2
    :goto_2
    iget-object v0, v1, Ly0/t;->O:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v11, v1, Ly0/t;->O:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    iget-object v0, v1, Ly0/t;->J:Ly0/l;

    if-nez v0, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ly0/o;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ly0/t;->P(Ly0/o;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v1, v7, v12}, Ly0/t;->r(Ly0/o;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to initialize decoder: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaCodecRenderer"

    invoke-static {v2, v0, v4}, Lk0/c;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v2, Ly0/q;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Decoder init failed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v9, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    instance-of v0, v4, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_4

    move-object v0, v4

    check-cast v0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_4
    move-object v8, v10

    :goto_4
    invoke-direct/range {v2 .. v8}, Ly0/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLy0/o;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ly0/t;->v(Ljava/lang/Exception;)V

    iget-object v0, v1, Ly0/t;->P:Ly0/q;

    if-nez v0, :cond_5

    iput-object v2, v1, Ly0/t;->P:Ly0/q;

    goto :goto_5

    :cond_5
    new-instance v13, Ly0/q;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    iget-object v2, v0, Ly0/q;->b:Ljava/lang/String;

    iget-boolean v3, v0, Ly0/q;->q:Z

    iget-object v4, v0, Ly0/q;->r:Ly0/o;

    iget-object v0, v0, Ly0/q;->s:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Ly0/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLy0/o;Ljava/lang/String;)V

    iput-object v13, v1, Ly0/t;->P:Ly0/q;

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v0, v1, Ly0/t;->P:Ly0/q;

    throw v0

    :cond_7
    iput-object v10, v1, Ly0/t;->O:Ljava/util/ArrayDeque;

    return-void

    :cond_8
    new-instance v0, Ly0/q;

    const v2, -0xc34f

    invoke-direct {v0, v9, v10, v6, v2}, Ly0/q;-><init>(Landroidx/media3/common/Format;Ly0/x;ZI)V

    throw v0
.end method

.method public abstract v(Ljava/lang/Exception;)V
.end method

.method public abstract w(JJLjava/lang/String;)V
.end method

.method public abstract x(Ljava/lang/String;)V
.end method

.method public y(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 12

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly0/t;->u0:Z

    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_21

    const-string v3, "video/av01"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    :cond_0
    move-object v7, v1

    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Lu0/j;

    iget-object v1, p0, Ly0/t;->D:Lu0/j;

    invoke-static {v1, p1}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object p1, p0, Ly0/t;->D:Lu0/j;

    iput-object v7, p0, Ly0/t;->A:Landroidx/media3/common/Format;

    iget-boolean p1, p0, Ly0/t;->g0:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Ly0/t;->i0:Z

    return-object v3

    :cond_1
    iget-object p1, p0, Ly0/t;->J:Ly0/l;

    if-nez p1, :cond_2

    iput-object v3, p0, Ly0/t;->O:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ly0/t;->t()V

    return-object v3

    :cond_2
    iget-object v1, p0, Ly0/t;->Q:Ly0/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Ly0/t;->C:Lu0/j;

    iget-object v3, p0, Ly0/t;->D:Lu0/j;

    const/16 v4, 0x17

    const/4 v5, 0x3

    const/4 v8, 0x2

    if-ne v2, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_1f

    if-nez v2, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-interface {v3}, Lu0/j;->h()Lp0/a;

    move-result-object v9

    if-nez v9, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-interface {v2}, Lu0/j;->h()Lp0/a;

    move-result-object v10

    if-eqz v10, :cond_1f

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_8

    :cond_6
    instance-of v9, v9, Lu0/y;

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v3}, Lu0/j;->c()Ljava/util/UUID;

    move-result-object v9

    invoke-interface {v2}, Lu0/j;->c()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto/16 :goto_8

    :cond_8
    sget v9, Lk0/C;->a:I

    if-ge v9, v4, :cond_9

    goto/16 :goto_8

    :cond_9
    sget-object v9, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-interface {v2}, Lu0/j;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-interface {v3}, Lu0/j;->c()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_8

    :cond_a
    iget-boolean v2, v1, Ly0/o;->f:Z

    if-nez v2, :cond_c

    invoke-interface {v3}, Lu0/j;->getState()I

    move-result v2

    if-eq v2, v8, :cond_1f

    invoke-interface {v3}, Lu0/j;->getState()I

    move-result v2

    if-eq v2, v5, :cond_b

    invoke-interface {v3}, Lu0/j;->getState()I

    move-result v2

    const/4 v9, 0x4

    if-ne v2, v9, :cond_c

    :cond_b
    iget-object v2, v7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2}, Lu0/j;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_8

    :cond_c
    :goto_0
    iget-object v2, p0, Ly0/t;->D:Lu0/j;

    iget-object v3, p0, Ly0/t;->C:Lu0/j;

    const/4 v9, 0x0

    if-eq v2, v3, :cond_d

    move v2, v0

    goto :goto_1

    :cond_d
    move v2, v9

    :goto_1
    if-eqz v2, :cond_f

    sget v3, Lk0/C;->a:I

    if-lt v3, v4, :cond_e

    goto :goto_2

    :cond_e
    move v3, v9

    goto :goto_3

    :cond_f
    :goto_2
    move v3, v0

    :goto_3
    invoke-static {v3}, Lk0/c;->j(Z)V

    invoke-virtual {p0, v1, v6, v7}, Ly0/t;->b(Ly0/o;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v3

    iget v4, v3, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v4, :cond_1a

    const/16 v10, 0x10

    if-eq v4, v0, :cond_16

    if-eq v4, v8, :cond_12

    if-ne v4, v5, :cond_11

    invoke-virtual {p0, v7}, Ly0/t;->T(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_4
    move v9, v10

    goto/16 :goto_7

    :cond_10
    iput-object v7, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Ly0/t;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_5
    move v9, v8

    goto/16 :goto_7

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_12
    invoke-virtual {p0, v7}, Ly0/t;->T(Landroidx/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_4

    :cond_13
    iput-boolean v0, p0, Ly0/t;->j0:Z

    iput v0, p0, Ly0/t;->k0:I

    iget v4, p0, Ly0/t;->R:I

    if-eq v4, v8, :cond_15

    if-ne v4, v0, :cond_14

    iget v4, v7, Landroidx/media3/common/Format;->width:I

    iget v10, v6, Landroidx/media3/common/Format;->width:I

    if-ne v4, v10, :cond_14

    iget v4, v7, Landroidx/media3/common/Format;->height:I

    iget v10, v6, Landroidx/media3/common/Format;->height:I

    if-ne v4, v10, :cond_14

    goto :goto_6

    :cond_14
    move v0, v9

    :cond_15
    :goto_6
    iput-boolean v0, p0, Ly0/t;->V:Z

    iput-object v7, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Ly0/t;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_5

    :cond_16
    invoke-virtual {p0, v7}, Ly0/t;->T(Landroidx/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_4

    :cond_17
    iput-object v7, p0, Ly0/t;->K:Landroidx/media3/common/Format;

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Ly0/t;->e()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_5

    :cond_18
    iget-boolean v2, p0, Ly0/t;->n0:Z

    if-eqz v2, :cond_1c

    iput v0, p0, Ly0/t;->l0:I

    iget-boolean v2, p0, Ly0/t;->T:Z

    if-eqz v2, :cond_19

    iput v5, p0, Ly0/t;->m0:I

    goto :goto_5

    :cond_19
    iput v0, p0, Ly0/t;->m0:I

    goto :goto_7

    :cond_1a
    iget-boolean v2, p0, Ly0/t;->n0:Z

    if-eqz v2, :cond_1b

    iput v0, p0, Ly0/t;->l0:I

    iput v5, p0, Ly0/t;->m0:I

    goto :goto_7

    :cond_1b
    invoke-virtual {p0}, Ly0/t;->I()V

    invoke-virtual {p0}, Ly0/t;->t()V

    :cond_1c
    :goto_7
    iget v0, v3, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ly0/t;->J:Ly0/l;

    if-ne v0, p1, :cond_1d

    iget p1, p0, Ly0/t;->m0:I

    if-ne p1, v5, :cond_1e

    :cond_1d
    new-instance v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v1, Ly0/o;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v4

    :cond_1e
    return-object v3

    :cond_1f
    :goto_8
    iget-boolean p1, p0, Ly0/t;->n0:Z

    if-eqz p1, :cond_20

    iput v0, p0, Ly0/t;->l0:I

    iput v5, p0, Ly0/t;->m0:I

    goto :goto_9

    :cond_20
    invoke-virtual {p0}, Ly0/t;->I()V

    invoke-virtual {p0}, Ly0/t;->t()V

    :goto_9
    new-instance v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v1, Ly0/o;->a:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v4

    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public abstract z(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
.end method
