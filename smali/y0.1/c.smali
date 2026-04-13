.class public final Ly0/c;
.super Ljava/lang/Object;

# interfaces
.implements Ly0/l;


# instance fields
.field public final b:Landroid/media/MediaCodec;

.field public final q:Ly0/f;

.field public final r:Ly0/m;

.field public final s:Lr0/C;

.field public t:Z

.field public u:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Ly0/m;Lr0/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    new-instance p1, Ly0/f;

    invoke-direct {p1, p2}, Ly0/f;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Ly0/c;->q:Ly0/f;

    iput-object p3, p0, Ly0/c;->r:Ly0/m;

    iput-object p4, p0, Ly0/c;->s:Lr0/C;

    const/4 p1, 0x0

    iput p1, p0, Ly0/c;->u:I

    return-void
.end method

.method public static e(Ly0/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 5

    iget-object v0, p0, Ly0/c;->q:Ly0/f;

    iget-object v1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    iget-object v2, v0, Ly0/f;->b:Landroid/os/HandlerThread;

    iget-object v3, v0, Ly0/f;->c:Landroid/os/Handler;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lk0/c;->j(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v3, v0, Ly0/f;->c:Landroid/os/Handler;

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Ly0/c;->r:Ly0/m;

    invoke-interface {p1}, Ly0/m;->start()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget p1, Lk0/C;->a:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Ly0/c;->s:Lr0/C;

    if-eqz p1, :cond_2

    iget-object p2, p1, Lr0/C;->d:Ljava/lang/Object;

    check-cast p2, Landroid/media/LoudnessCodecController;

    if-eqz p2, :cond_1

    invoke-static {p2, v1}, Landroidx/media3/exoplayer/c;->g(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lr0/C;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lk0/c;->j(Z)V

    :cond_2
    :goto_1
    iput v4, p0, Ly0/c;->u:I

    return-void
.end method

.method public static h(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILp0/b;JI)V
    .locals 6

    iget-object v0, p0, Ly0/c;->r:Ly0/m;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ly0/m;->a(ILp0/b;JI)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Ly0/c;->r:Ly0/m;

    invoke-interface {v0, p1}, Ly0/m;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(IIJI)V
    .locals 6

    iget-object v0, p0, Ly0/c;->r:Ly0/m;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ly0/m;->c(IIJI)V

    return-void
.end method

.method public final d(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final f()Landroid/media/MediaFormat;
    .locals 2

    iget-object v0, p0, Ly0/c;->q:Ly0/f;

    iget-object v1, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Ly0/f;->h:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final flush()V
    .locals 6

    iget-object v0, p0, Ly0/c;->r:Ly0/m;

    invoke-interface {v0}, Ly0/m;->flush()V

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Ly0/c;->q:Ly0/f;

    iget-object v1, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Ly0/f;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Ly0/f;->l:J

    iget-object v2, v0, Ly0/f;->c:Landroid/os/Handler;

    sget v3, Lk0/C;->a:I

    new-instance v3, Lv0/t;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lv0/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-static {v0}, Landroidx/media3/exoplayer/c;->f(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public final k(IJ)V
    .locals 1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final l()I
    .locals 7

    iget-object v0, p0, Ly0/c;->r:Ly0/m;

    invoke-interface {v0}, Ly0/m;->g()V

    iget-object v0, p0, Ly0/c;->q:Ly0/f;

    iget-object v1, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ly0/f;->n:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v2, :cond_8

    iget-object v2, v0, Ly0/f;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_7

    iget-object v2, v0, Ly0/f;->k:Landroid/media/MediaCodec$CryptoException;

    if-nez v2, :cond_6

    iget-wide v2, v0, Ly0/f;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Ly0/f;->m:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, v0, Ly0/f;->d:Ln/g;

    iget v2, v0, Ln/g;->a:I

    iget v6, v0, Ln/g;->b:I

    if-ne v2, v6, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    if-eq v2, v6, :cond_5

    iget-object v3, v0, Ln/g;->c:[I

    aget v5, v3, v2

    add-int/2addr v2, v4

    iget v3, v0, Ln/g;->d:I

    and-int/2addr v2, v3

    iput v2, v0, Ln/g;->a:I

    :goto_2
    monitor-exit v1

    return v5

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_6
    iput-object v3, v0, Ly0/f;->k:Landroid/media/MediaCodec$CryptoException;

    throw v2

    :cond_7
    iput-object v3, v0, Ly0/f;->j:Landroid/media/MediaCodec$CodecException;

    throw v2

    :cond_8
    iput-object v3, v0, Ly0/f;->n:Ljava/lang/IllegalStateException;

    throw v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    iget-object v0, p0, Ly0/c;->r:Ly0/m;

    invoke-interface {v0}, Ly0/m;->g()V

    iget-object v0, p0, Ly0/c;->q:Ly0/f;

    iget-object v1, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ly0/f;->n:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    iget-object v2, v0, Ly0/f;->j:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_9

    iget-object v2, v0, Ly0/f;->k:Landroid/media/MediaCodec$CryptoException;

    if-nez v2, :cond_8

    iget-wide v2, v0, Ly0/f;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-boolean v2, v0, Ly0/f;->m:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    iget-object v2, v0, Ly0/f;->e:Ln/g;

    iget v6, v2, Ln/g;->a:I

    iget v7, v2, Ln/g;->b:I

    if-ne v6, v7, :cond_3

    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    monitor-exit v1

    return v5

    :cond_4
    if-eq v6, v7, :cond_7

    iget-object v3, v2, Ln/g;->c:[I

    aget v3, v3, v6

    add-int/2addr v6, v4

    iget v4, v2, Ln/g;->d:I

    and-int/2addr v4, v6

    iput v4, v2, Ln/g;->a:I

    if-ltz v3, :cond_5

    iget-object v2, v0, Ly0/f;->h:Landroid/media/MediaFormat;

    invoke-static {v2}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Ly0/f;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x2

    if-ne v3, p1, :cond_6

    iget-object p1, v0, Ly0/f;->g:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, v0, Ly0/f;->h:Landroid/media/MediaFormat;

    :cond_6
    :goto_2
    monitor-exit v1

    return v3

    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_8
    iput-object v3, v0, Ly0/f;->k:Landroid/media/MediaCodec$CryptoException;

    throw v2

    :cond_9
    iput-object v3, v0, Ly0/f;->j:Landroid/media/MediaCodec$CodecException;

    throw v2

    :cond_a
    iput-object v3, v0, Ly0/f;->n:Ljava/lang/IllegalStateException;

    throw v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final o(LG0/e;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Ly0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ly0/a;-><init>(Ly0/l;LG0/e;I)V

    iget-object p1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final p(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final q(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final r(Ly0/r;)Z
    .locals 2

    iget-object v0, p0, Ly0/c;->q:Ly0/f;

    iget-object v1, v0, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Ly0/f;->o:Ly0/r;

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final release()V
    .locals 7

    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Ly0/c;->u:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Ly0/c;->r:Ly0/m;

    invoke-interface {v4}, Ly0/m;->shutdown()V

    iget-object v4, p0, Ly0/c;->q:Ly0/f;

    iget-object v5, v4, Ly0/f;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v3, v4, Ly0/f;->m:Z

    iget-object v6, v4, Ly0/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {v4}, Ly0/f;->a()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Ly0/c;->u:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v4, p0, Ly0/c;->t:Z

    if-nez v4, :cond_4

    :try_start_3
    sget v4, Lk0/C;->a:I

    if-lt v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    iget-object v0, p0, Ly0/c;->s:Lr0/C;

    if-eqz v0, :cond_2

    iget-object v1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lr0/C;->o(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Ly0/c;->t:Z

    return-void

    :goto_2
    sget v1, Lk0/C;->a:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Ly0/c;->s:Lr0/C;

    if-eqz v1, :cond_3

    iget-object v2, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lr0/C;->o(Landroid/media/MediaCodec;)V

    :cond_3
    iget-object v1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Ly0/c;->t:Z

    throw v0

    :cond_4
    return-void

    :goto_3
    iget-boolean v5, p0, Ly0/c;->t:Z

    if-nez v5, :cond_8

    :try_start_4
    sget v5, Lk0/C;->a:I

    if-lt v5, v1, :cond_5

    if-ge v5, v0, :cond_5

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    if-lt v5, v2, :cond_6

    iget-object v0, p0, Ly0/c;->s:Lr0/C;

    if-eqz v0, :cond_6

    iget-object v1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lr0/C;->o(Landroid/media/MediaCodec;)V

    :cond_6
    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Ly0/c;->t:Z

    goto :goto_6

    :goto_5
    sget v1, Lk0/C;->a:I

    if-lt v1, v2, :cond_7

    iget-object v1, p0, Ly0/c;->s:Lr0/C;

    if-eqz v1, :cond_7

    iget-object v2, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lr0/C;->o(Landroid/media/MediaCodec;)V

    :cond_7
    iget-object v1, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Ly0/c;->t:Z

    throw v0

    :cond_8
    :goto_6
    throw v4
.end method

.method public final s(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final setVideoScalingMode(I)V
    .locals 1

    iget-object v0, p0, Ly0/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
