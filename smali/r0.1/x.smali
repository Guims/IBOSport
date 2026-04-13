.class public abstract Lr0/x;
.super Landroidx/media3/exoplayer/BaseRenderer;

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public A:Lu0/j;

.field public B:Lu0/j;

.field public C:I

.field public D:Z

.field public E:Z

.field public F:J

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:J

.field public final K:[J

.field public L:I

.field public M:Z

.field public final b:Lp5/p;

.field public final q:Lr0/s;

.field public final r:Lp0/f;

.field public s:Landroidx/media3/exoplayer/DecoderCounters;

.field public t:Landroidx/media3/common/Format;

.field public u:I

.field public v:I

.field public w:Z

.field public x:Lp0/c;

.field public y:Lp0/f;

.field public z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr0/l;Lr0/s;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    new-instance v1, Lp5/p;

    invoke-direct {v1, p1, p2}, Lp5/p;-><init>(Landroid/os/Handler;Lr0/l;)V

    iput-object v1, p0, Lr0/x;->b:Lp5/p;

    iput-object p3, p0, Lr0/x;->q:Lr0/s;

    new-instance p1, Lcom/bumptech/glide/f;

    move-object p2, p0

    check-cast p2, Landroidx/media3/decoder/ffmpeg/c;

    const/16 v1, 0x15

    invoke-direct {p1, v1, p2}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    check-cast p3, Lr0/G;

    iput-object p1, p3, Lr0/G;->s:Lr0/p;

    new-instance p1, Lp0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lp0/f;-><init>(II)V

    iput-object p1, p0, Lr0/x;->r:Lp0/f;

    iput p2, p0, Lr0/x;->C:I

    iput-boolean v0, p0, Lr0/x;->E:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, p2}, Lr0/x;->h(J)V

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lr0/x;->K:[J

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/media3/common/Format;)Lp0/c;
.end method

.method public final b()Z
    .locals 8

    iget-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget-object v1, p0, Lr0/x;->q:Lr0/s;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    check-cast v0, Lp0/i;

    invoke-virtual {v0}, Lp0/i;->k()Lp0/g;

    move-result-object v0

    check-cast v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iput-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v4, v0, Lp0/g;->s:I

    if-lez v4, :cond_1

    iget-object v5, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    iget v6, v5, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v6, v4

    iput v6, v5, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    move-object v4, v1

    check-cast v4, Lr0/G;

    iput-boolean v2, v4, Lr0/G;->M:Z

    :cond_1
    const/high16 v4, 0x8000000

    invoke-virtual {v0, v4}, LU2/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lr0/G;

    iput-boolean v2, v0, Lr0/G;->M:Z

    iget v0, p0, Lr0/x;->L:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr0/x;->K:[J

    aget-wide v4, v0, v3

    invoke-virtual {p0, v4, v5}, Lr0/x;->h(J)V

    iget v4, p0, Lr0/x;->L:I

    sub-int/2addr v4, v2

    iput v4, p0, Lr0/x;->L:I

    invoke-static {v0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, LU2/e;->c(I)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lr0/x;->C:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lr0/x;->g()V

    invoke-virtual {p0}, Lr0/x;->e()V

    iput-boolean v2, p0, Lr0/x;->E:Z

    return v3

    :cond_3
    iget-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->l()V

    iput-object v4, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    :try_start_0
    iput-boolean v2, p0, Lr0/x;->I:Z

    check-cast v1, Lr0/G;

    invoke-virtual {v1}, Lr0/G;->v()V
    :try_end_0
    .catch Lr0/r; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    iget-boolean v1, v0, Lr0/r;->q:Z

    const/16 v2, 0x138a

    iget-object v3, v0, Lr0/r;->r:Landroidx/media3/common/Format;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_4
    iget-boolean v0, p0, Lr0/x;->E:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    invoke-virtual {p0, v0}, Lr0/x;->d(Lp0/c;)Landroidx/media3/common/Format;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v5, p0, Lr0/x;->u:I

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v5, p0, Lr0/x;->v:I

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->customData:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setCustomData(Ljava/lang/Object;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v5, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget v5, v5, Landroidx/media3/common/Format;->roleFlags:I

    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    move-object v5, v1

    check-cast v5, Lr0/G;

    invoke-virtual {v5, v0, v4}, Lr0/G;->d(Landroidx/media3/common/Format;[I)V

    iput-boolean v3, p0, Lr0/x;->E:Z

    :cond_5
    iget-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    iget-object v5, v0, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->v:Ljava/nio/ByteBuffer;

    iget-wide v6, v0, Lp0/g;->r:J

    check-cast v1, Lr0/G;

    invoke-virtual {v1, v5, v6, v7, v2}, Lr0/G;->m(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->l()V

    iput-object v4, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    return v2

    :cond_6
    :goto_0
    return v3
.end method

.method public final c()Z
    .locals 7

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Lr0/x;->C:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lr0/x;->H:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lr0/x;->y:Lp0/f;

    if-nez v2, :cond_1

    check-cast v0, Lp0/i;

    invoke-virtual {v0}, Lp0/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0/f;

    iput-object v0, p0, Lr0/x;->y:Lp0/f;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lr0/x;->C:I

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lr0/x;->y:Lp0/f;

    iput v2, v0, LU2/e;->q:I

    iget-object v2, p0, Lr0/x;->x:Lp0/c;

    check-cast v2, Lp0/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v0}, Lp0/i;->l(Lp0/f;)V

    iput-object v4, p0, Lr0/x;->y:Lp0/f;

    iput v3, p0, Lr0/x;->C:I

    return v1

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    iget-object v3, p0, Lr0/x;->y:Lp0/f;

    invoke-virtual {p0, v0, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v3

    const/4 v6, -0x5

    if-eq v3, v6, :cond_7

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lr0/x;->y:Lp0/f;

    invoke-virtual {v0, v2}, LU2/e;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lr0/x;->H:Z

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    iget-object v2, p0, Lr0/x;->y:Lp0/f;

    check-cast v0, Lp0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lp0/i;->l(Lp0/f;)V

    iput-object v4, p0, Lr0/x;->y:Lp0/f;

    return v1

    :cond_5
    iget-boolean v0, p0, Lr0/x;->w:Z

    if-nez v0, :cond_6

    iput-boolean v5, p0, Lr0/x;->w:Z

    iget-object v0, p0, Lr0/x;->y:Lp0/f;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, LU2/e;->a(I)V

    :cond_6
    iget-object v0, p0, Lr0/x;->y:Lp0/f;

    invoke-virtual {v0}, Lp0/f;->n()V

    iget-object v0, p0, Lr0/x;->y:Lp0/f;

    iget-object v1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iput-object v1, v0, Lp0/f;->r:Landroidx/media3/common/Format;

    iget-object v1, p0, Lr0/x;->x:Lp0/c;

    check-cast v1, Lp0/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lp0/i;->l(Lp0/f;)V

    iput-boolean v5, p0, Lr0/x;->D:Z

    iget-object v0, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v1, v5

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iput-object v4, p0, Lr0/x;->y:Lp0/f;

    return v5

    :cond_7
    invoke-virtual {p0, v0}, Lr0/x;->f(Landroidx/media3/exoplayer/FormatHolder;)V

    return v5

    :cond_8
    :goto_0
    return v1
.end method

.method public abstract d(Lp0/c;)Landroidx/media3/common/Format;
.end method

.method public final e()V
    .locals 10

    iget-object v1, p0, Lr0/x;->b:Lp5/p;

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr0/x;->B:Lu0/j;

    iget-object v2, p0, Lr0/x;->A:Lu0/j;

    invoke-static {v2, v0}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v0, p0, Lr0/x;->A:Lu0/j;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lu0/j;->h()Lp0/a;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr0/x;->A:Lu0/j;

    invoke-interface {v0}, Lu0/j;->g()Lu0/i;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const/16 v8, 0xfa1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "createAudioDecoder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    invoke-virtual {p0, v0}, Lr0/x;->a(Landroidx/media3/common/Format;)Lp0/c;

    move-result-object v0

    iput-object v0, p0, Lr0/x;->x:Lp0/c;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v4

    check-cast v0, Lp0/i;

    invoke-virtual {v0, v4, v5}, Lp0/i;->a(J)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    move-wide v5, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    invoke-interface {v0}, Lp0/c;->getName()Ljava/lang/String;

    move-result-object v2

    sub-long v5, v3, v5

    iget-object v0, v1, Lp5/p;->q:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    if-eqz v9, :cond_3

    new-instance v0, LG0/E;

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, LG0/E;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lp0/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    invoke-virtual {p0, v0, v1, v8}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :goto_3
    const-string v2, "DecoderAudioRenderer"

    const-string v3, "Audio codec error"

    invoke-static {v2, v3, v0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lp5/p;->q:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    if-eqz v2, :cond_4

    new-instance v3, Lr0/i;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lr0/i;-><init>(Lp5/p;Ljava/lang/Exception;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    invoke-virtual {p0, v0, v1, v8}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final f(Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 7

    iget-object v3, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Lu0/j;

    iget-object v0, p0, Lr0/x;->B:Lu0/j;

    invoke-static {v0, p1}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object p1, p0, Lr0/x;->B:Lu0/j;

    iget-object v2, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iput-object v3, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget v0, v3, Landroidx/media3/common/Format;->encoderDelay:I

    iput v0, p0, Lr0/x;->u:I

    iget v0, v3, Landroidx/media3/common/Format;->encoderPadding:I

    iput v0, p0, Lr0/x;->v:I

    iget-object v0, p0, Lr0/x;->x:Lp0/c;

    iget-object v6, p0, Lr0/x;->b:Lp5/p;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lr0/x;->e()V

    iget-object p1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v0, v6, Lp5/p;->q:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v1, LG0/n;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, v6, p1, v3, v2}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lr0/x;->A:Lu0/j;

    if-eq p1, v1, :cond_1

    move-object p1, v0

    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    invoke-interface {p1}, Lp0/c;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    invoke-interface {p1}, Lp0/c;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    :goto_0
    iget p1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lr0/x;->D:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iput v1, p0, Lr0/x;->C:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lr0/x;->g()V

    invoke-virtual {p0}, Lr0/x;->e()V

    iput-boolean v1, p0, Lr0/x;->E:Z

    :cond_3
    :goto_1
    iget-object p1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    iget-object v1, v6, Lp5/p;->q:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_4

    new-instance v2, LG0/n;

    const/4 v3, 0x6

    invoke-direct {v2, v6, p1, v0, v3}, LG0/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final g()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/x;->y:Lp0/f;

    iput-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    iput v1, p0, Lr0/x;->C:I

    iput-boolean v1, p0, Lr0/x;->D:Z

    iget-object v1, p0, Lr0/x;->x:Lp0/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    iget v3, v2, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    invoke-interface {v1}, Lp0/c;->release()V

    iget-object v1, p0, Lr0/x;->x:Lp0/c;

    invoke-interface {v1}, Lp0/c;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lr0/x;->b:Lp5/p;

    iget-object v3, v2, Lp5/p;->q:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    if-eqz v3, :cond_0

    new-instance v4, LA/o;

    const/16 v5, 0x14

    invoke-direct {v4, v2, v5, v1}, LA/o;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-object v0, p0, Lr0/x;->x:Lp0/c;

    :cond_1
    iget-object v1, p0, Lr0/x;->A:Lu0/j;

    invoke-static {v1, v0}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v0, p0, Lr0/x;->A:Lu0/j;

    return-void
.end method

.method public final getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    return-object p0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Lr0/x;->q:Lr0/s;

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

    invoke-virtual {p0}, Lr0/x;->i()V

    :cond_0
    iget-wide v0, p0, Lr0/x;->F:J

    return-wide v0
.end method

.method public final h(J)V
    .locals 2

    iput-wide p1, p0, Lr0/x;->J:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr0/x;->q:Lr0/s;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    iget-object v1, p0, Lr0/x;->q:Lr0/s;

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v1, Lr0/G;

    iget p2, v1, Lr0/G;->Y:I

    if-eq p2, p1, :cond_c

    iput p1, v1, Lr0/G;->Y:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lr0/G;->X:Z

    invoke-virtual {v1}, Lr0/G;->g()V

    return-void

    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v1, Lr0/G;

    iput-boolean p1, v1, Lr0/G;->E:Z

    invoke-virtual {v1}, Lr0/G;->E()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :goto_1
    move-object v3, p1

    goto :goto_2

    :cond_3
    iget-object p1, v1, Lr0/G;->D:Landroidx/media3/common/PlaybackParameters;

    goto :goto_1

    :goto_2
    new-instance v2, Lr0/D;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v7}, Lr0/D;-><init>(Landroidx/media3/common/PlaybackParameters;JJ)V

    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v2, v1, Lr0/G;->B:Lr0/D;

    return-void

    :cond_4
    iput-object v2, v1, Lr0/G;->C:Lr0/D;

    return-void

    :cond_5
    sget p1, Lk0/C;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_c

    check-cast p2, Landroid/media/AudioDeviceInfo;

    check-cast v1, Lr0/G;

    const/4 p1, 0x0

    if-nez p2, :cond_6

    move-object v0, p1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/bumptech/glide/f;

    const/16 v2, 0x14

    invoke-direct {v0, v2, p2}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    :goto_3
    iput-object v0, v1, Lr0/G;->a0:Lcom/bumptech/glide/f;

    iget-object v0, v1, Lr0/G;->y:Lr0/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Lr0/e;->b(Landroid/media/AudioDeviceInfo;)V

    :cond_7
    iget-object p2, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    if-eqz p2, :cond_c

    iget-object v0, v1, Lr0/G;->a0:Lcom/bumptech/glide/f;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioDeviceInfo;

    :goto_4
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void

    :cond_9
    check-cast p2, Landroidx/media3/common/AuxEffectInfo;

    check-cast v1, Lr0/G;

    invoke-virtual {v1, p2}, Lr0/G;->A(Landroidx/media3/common/AuxEffectInfo;)V

    return-void

    :cond_a
    check-cast p2, Landroidx/media3/common/AudioAttributes;

    check-cast v1, Lr0/G;

    invoke-virtual {v1, p2}, Lr0/G;->y(Landroidx/media3/common/AudioAttributes;)V

    return-void

    :cond_b
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v1, Lr0/G;

    iget p2, v1, Lr0/G;->P:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_c

    iput p1, v1, Lr0/G;->P:F

    invoke-virtual {v1}, Lr0/G;->p()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v1, Lr0/G;->w:Landroid/media/AudioTrack;

    iget p2, v1, Lr0/G;->P:F

    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_c
    return-void
.end method

.method public final hasSkippedSilenceSinceLastCall()Z
    .locals 2

    iget-boolean v0, p0, Lr0/x;->M:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr0/x;->M:Z

    return v0
.end method

.method public final i()V
    .locals 4

    invoke-virtual {p0}, Lr0/x;->isEnded()Z

    move-result v0

    iget-object v1, p0, Lr0/x;->q:Lr0/s;

    check-cast v1, Lr0/G;

    invoke-virtual {v1, v0}, Lr0/G;->h(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lr0/x;->G:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lr0/x;->F:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lr0/x;->F:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/x;->G:Z

    :cond_1
    return-void
.end method

.method public final isEnded()Z
    .locals 2

    iget-boolean v0, p0, Lr0/x;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr0/x;->q:Lr0/s;

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

    iget-object v0, p0, Lr0/x;->q:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

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

.method public final onDisabled()V
    .locals 4

    iget-object v0, p0, Lr0/x;->b:Lp5/p;

    const/4 v1, 0x0

    iput-object v1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lr0/x;->E:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v2, v3}, Lr0/x;->h(J)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lr0/x;->M:Z

    :try_start_0
    iget-object v2, p0, Lr0/x;->B:Lu0/j;

    invoke-static {v2, v1}, Lu0/j;->e(Lu0/j;Lu0/j;)V

    iput-object v1, p0, Lr0/x;->B:Lu0/j;

    invoke-virtual {p0}, Lr0/x;->g()V

    iget-object v1, p0, Lr0/x;->q:Lr0/s;

    check-cast v1, Lr0/G;

    invoke-virtual {v1}, Lr0/G;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Lp5/p;->y(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v2}, Lp5/p;->y(Landroidx/media3/exoplayer/DecoderCounters;)V

    throw v1
.end method

.method public final onEnabled(ZZ)V
    .locals 3

    new-instance p1, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p2, p0, Lr0/x;->b:Lp5/p;

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

    iget-object p2, p0, Lr0/x;->q:Lr0/s;

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
    .locals 2

    iget-object p3, p0, Lr0/x;->q:Lr0/s;

    check-cast p3, Lr0/G;

    invoke-virtual {p3}, Lr0/G;->g()V

    iput-wide p1, p0, Lr0/x;->F:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr0/x;->M:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lr0/x;->G:Z

    iput-boolean p1, p0, Lr0/x;->H:Z

    iput-boolean p1, p0, Lr0/x;->I:Z

    iget-object p2, p0, Lr0/x;->x:Lp0/c;

    if-eqz p2, :cond_2

    iget p2, p0, Lr0/x;->C:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lr0/x;->g()V

    invoke-virtual {p0}, Lr0/x;->e()V

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lr0/x;->y:Lp0/f;

    iget-object p3, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;->l()V

    iput-object p2, p0, Lr0/x;->z:Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    :cond_1
    iget-object p2, p0, Lr0/x;->x:Lp0/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lp0/i;

    invoke-virtual {p2}, Lp0/i;->flush()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lp0/i;->a(J)V

    iput-boolean p1, p0, Lr0/x;->D:Z

    :cond_2
    return-void
.end method

.method public final onStarted()V
    .locals 1

    iget-object v0, p0, Lr0/x;->q:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->t()V

    return-void
.end method

.method public final onStopped()V
    .locals 1

    invoke-virtual {p0}, Lr0/x;->i()V

    iget-object v0, p0, Lr0/x;->q:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0}, Lr0/G;->s()V

    return-void
.end method

.method public final onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V
    .locals 2

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/E;)V

    move-object p1, p0

    const/4 p2, 0x0

    iput-boolean p2, p1, Lr0/x;->w:Z

    iget-wide p2, p1, Lr0/x;->J:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    invoke-virtual {p0, p4, p5}, Lr0/x;->h(J)V

    return-void

    :cond_0
    iget p2, p1, Lr0/x;->L:I

    iget-object p3, p1, Lr0/x;->K:[J

    array-length p6, p3

    if-ne p2, p6, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p6, "Too many stream changes, so dropping offset: "

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p6, p1, Lr0/x;->L:I

    add-int/lit8 p6, p6, -0x1

    aget-wide v0, p3, p6

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p6, "DecoderAudioRenderer"

    invoke-static {p6, p2}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lr0/x;->L:I

    :goto_0
    iget p2, p1, Lr0/x;->L:I

    add-int/lit8 p2, p2, -0x1

    aput-wide p4, p3, p2

    return-void
.end method

.method public final render(JJ)V
    .locals 2

    iget-boolean p1, p0, Lr0/x;->I:Z

    iget-object p2, p0, Lr0/x;->q:Lr0/s;

    const/16 p3, 0x138a

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p2, Lr0/G;

    invoke-virtual {p2}, Lr0/G;->v()V
    :try_end_0
    .catch Lr0/r; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p1, Lr0/r;->r:Landroidx/media3/common/Format;

    iget-boolean p4, p1, Lr0/r;->q:Z

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_0
    iget-object p1, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object p1

    iget-object p4, p0, Lr0/x;->r:Lp0/f;

    invoke-virtual {p4}, Lp0/f;->k()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;I)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lr0/x;->f(Landroidx/media3/exoplayer/FormatHolder;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_6

    const/4 p1, 0x4

    invoke-virtual {p4, p1}, LU2/e;->c(I)Z

    move-result p1

    invoke-static {p1}, Lk0/c;->j(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr0/x;->H:Z

    :try_start_1
    iput-boolean p1, p0, Lr0/x;->I:Z

    check-cast p2, Lr0/G;

    invoke-virtual {p2}, Lr0/G;->v()V
    :try_end_1
    .catch Lr0/r; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lr0/x;->e()V

    iget-object p1, p0, Lr0/x;->x:Lp0/c;

    if-eqz p1, :cond_6

    const/16 p1, 0x1389

    :try_start_2
    const-string p2, "drainAndFeed"

    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lr0/x;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lr0/x;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catch Lp0/d; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lr0/n; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lr0/o; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lr0/r; {:try_start_2 .. :try_end_2} :catch_2

    iget-object p1, p0, Lr0/x;->s:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    return-void

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p2

    goto :goto_4

    :catch_4
    move-exception p2

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_6

    :goto_3
    iget-object p2, p1, Lr0/r;->r:Landroidx/media3/common/Format;

    iget-boolean p4, p1, Lr0/r;->q:Z

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_4
    iget-object p3, p2, Lr0/o;->r:Landroidx/media3/common/Format;

    iget-boolean p4, p2, Lr0/o;->q:Z

    invoke-virtual {p0, p2, p3, p4, p1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_5
    iget-object p3, p2, Lr0/n;->b:Landroidx/media3/common/Format;

    invoke-virtual {p0, p2, p3, p1}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :goto_6
    const-string p2, "DecoderAudioRenderer"

    const-string p3, "Audio codec error"

    invoke-static {p2, p3, p1}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lr0/x;->b:Lp5/p;

    iget-object p3, p2, Lp5/p;->q:Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    if-eqz p3, :cond_5

    new-instance p4, Lr0/i;

    const/4 v0, 0x0

    invoke-direct {p4, p2, p1, v0}, Lr0/i;-><init>(Lp5/p;Ljava/lang/Exception;I)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object p2, p0, Lr0/x;->t:Landroidx/media3/common/Format;

    const/16 p3, 0xfa3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Lr0/x;->q:Lr0/s;

    check-cast v0, Lr0/G;

    invoke-virtual {v0, p1}, Lr0/G;->C(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 5

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/media3/decoder/ffmpeg/c;

    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->d()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroidx/media3/decoder/ffmpeg/FfmpegLibrary;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    iget v2, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v4, v1, v2}, Lk0/C;->A(III)Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v0, v0, Lr0/x;->q:Lr0/s;

    move-object v2, v0

    check-cast v2, Lr0/G;

    invoke-virtual {v2, v1}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_2

    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v2, v1, v3}, Lk0/C;->A(III)Landroidx/media3/common/Format;

    move-result-object v1

    check-cast v0, Lr0/G;

    invoke-virtual {v0, v1}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-eqz p1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :cond_5
    :goto_1
    if-gt v1, v4, :cond_6

    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p1

    return p1

    :cond_6
    const/16 p1, 0x8

    const/16 v0, 0x20

    invoke-static {v1, p1, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(III)I

    move-result p1

    return p1
.end method
