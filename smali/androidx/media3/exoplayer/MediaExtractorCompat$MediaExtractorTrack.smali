.class final Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaExtractorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaExtractorTrack"
.end annotation


# instance fields
.field public final compatibilityTrackMimeType:Ljava/lang/String;

.field public final isCompatibilityTrack:Z

.field public final sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->isCompatibilityTrack:Z

    iput-object p3, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->compatibilityTrackMimeType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;Landroidx/media3/exoplayer/MediaExtractorCompat$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;-><init>(Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createDownstreamMediaFormat(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;)Landroid/media/MediaFormat;
    .locals 9

    invoke-virtual {p1}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/source/e0;->read(Landroidx/media3/exoplayer/FormatHolder;Lp0/f;IZ)I

    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v3, "bitrate"

    iget v4, p2, Landroidx/media3/common/Format;->bitrate:I

    invoke-static {v0, v3, v4}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "max-bitrate"

    iget v4, p2, Landroidx/media3/common/Format;->peakBitrate:I

    invoke-static {v0, v3, v4}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "channel-count"

    iget v4, p2, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v0, v3, v4}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v3, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v0, v3}, Lk0/r;->a(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V

    iget-object v3, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "mime"

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v5, "codecs-string"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v3, p2, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_2

    const-string v5, "frame-rate"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_2
    const-string v3, "width"

    iget v5, p2, Landroidx/media3/common/Format;->width:I

    invoke-static {v0, v3, v5}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "height"

    iget v5, p2, Landroidx/media3/common/Format;->height:I

    invoke-static {v0, v3, v5}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v3, p2, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, v3}, Lk0/r;->c(Landroid/media/MediaFormat;Ljava/util/List;)V

    iget v3, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "exo-pcm-encoding-int"

    invoke-static {v0, v5, v3}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    const/4 v5, 0x4

    if-eq v3, v5, :cond_6

    const/16 v5, 0x15

    if-eq v3, v5, :cond_6

    const/16 v5, 0x16

    if-eq v3, v5, :cond_6

    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_0

    :cond_5
    move v5, v2

    :cond_6
    :goto_0
    const-string v3, "pcm-encoding"

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_1
    iget-object v3, p2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v3, :cond_7

    const-string v5, "language"

    invoke-virtual {v0, v5, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v3, "max-input-size"

    iget v5, p2, Landroidx/media3/common/Format;->maxInputSize:I

    invoke-static {v0, v3, v5}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "sample-rate"

    iget v5, p2, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {v0, v3, v5}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "caption-service-number"

    iget v5, p2, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-static {v0, v3, v5}, Lk0/r;->b(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "rotation-degrees"

    iget v5, p2, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v3, p2, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v5, v3, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    move v5, v6

    goto :goto_2

    :cond_8
    move v5, v2

    :goto_2
    const-string v7, "is-autoselect"

    invoke-virtual {v0, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_9

    move v5, v6

    goto :goto_3

    :cond_9
    move v5, v2

    :goto_3
    const-string v7, "is-default"

    invoke-virtual {v0, v7, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    move v2, v6

    :cond_a
    const-string v1, "is-forced-subtitle"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "encoder-delay"

    iget v2, p2, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "encoder-padding"

    iget v2, p2, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget p2, p2, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    const-string v1, "exo-pixel-width-height-ratio-float"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-gez v2, :cond_b

    int-to-float v1, v3

    mul-float/2addr p2, v1

    float-to-int v6, p2

    goto :goto_4

    :cond_b
    cmpl-float v1, p2, v1

    if-lez v1, :cond_c

    int-to-float v1, v3

    div-float/2addr v1, p2

    float-to-int v6, v1

    move v8, v6

    move v6, v3

    move v3, v8

    goto :goto_4

    :cond_c
    move v3, v6

    :goto_4
    const-string p2, "sar-width"

    invoke-virtual {v0, p2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "sar-height"

    invoke-virtual {v0, p2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->compatibilityTrackMimeType:Ljava/lang/String;

    if-eqz p1, :cond_e

    sget p1, Lk0/C;->a:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_d

    invoke-static {v0}, Landroidx/lifecycle/D;->q(Landroid/media/MediaFormat;)V

    :cond_d
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->compatibilityTrackMimeType:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method

.method public discardFrontSample()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/e0;->skip(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/e0;->discardToRead()V

    return-void
.end method

.method public getIdOfBackingTrack()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    iget v0, v0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;->trackId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->sampleQueue:Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorSampleQueue;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->isCompatibilityTrack:Z

    iget-object v2, p0, Landroidx/media3/exoplayer/MediaExtractorCompat$MediaExtractorTrack;->compatibilityTrackMimeType:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaExtractorSampleQueue: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isCompatibilityTrack: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", compatibilityTrackMimeType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
