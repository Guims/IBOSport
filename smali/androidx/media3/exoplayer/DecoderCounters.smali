.class public final Landroidx/media3/exoplayer/DecoderCounters;
.super Ljava/lang/Object;


# instance fields
.field public decoderInitCount:I

.field public decoderReleaseCount:I

.field public droppedBufferCount:I

.field public droppedInputBufferCount:I

.field public droppedToKeyframeCount:I

.field public maxConsecutiveDroppedBufferCount:I

.field public queuedInputBufferCount:I

.field public renderedOutputBufferCount:I

.field public skippedInputBufferCount:I

.field public skippedOutputBufferCount:I

.field public totalVideoFrameProcessingOffsetUs:J

.field public videoFrameProcessingOffsetCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addVideoFrameProcessingOffsets(JI)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    return-void
.end method


# virtual methods
.method public addVideoFrameProcessingOffset(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffsets(JI)V

    return-void
.end method

.method public declared-synchronized ensureUpdated()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public merge(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget-wide v0, p1, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p1, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffsets(JI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    iget v2, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    iget v3, v0, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    iget v4, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    iget v5, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    iget v6, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v7, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget v8, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    iget v9, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v10, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget-wide v11, v0, Landroidx/media3/exoplayer/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget v13, v0, Landroidx/media3/exoplayer/DecoderCounters;->videoFrameProcessingOffsetCount:I

    sget v14, Lk0/C;->a:I

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, ",\n decoderReleases="

    const-string v15, "\n queuedInputBuffers="

    const-string v0, "DecoderCounters {\n decoderInits="

    invoke-static {v0, v1, v14, v2, v15}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n skippedInputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n renderedOutputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n skippedOutputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n droppedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n droppedInputBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n maxConsecutiveDroppedBuffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n droppedToKeyframeEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n totalVideoFrameProcessingOffsetUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n videoFrameProcessingOffsetCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
