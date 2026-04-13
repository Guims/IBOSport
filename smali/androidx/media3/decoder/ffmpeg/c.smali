.class public final Landroidx/media3/decoder/ffmpeg/c;
.super Lr0/x;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lr0/l;Lr0/s;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr0/x;-><init>(Landroid/os/Handler;Lr0/l;Lr0/s;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Format;)Lp0/c;
    .locals 8

    const-string v0, "createFfmpegAudioDecoder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1680

    :goto_0
    new-instance v1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    iget v2, p1, Landroidx/media3/common/Format;->channelCount:I

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lk0/C;->A(III)Landroidx/media3/common/Format;

    move-result-object v2

    iget-object v3, p0, Lr0/x;->q:Lr0/s;

    move-object v5, v3

    check-cast v5, Lr0/G;

    invoke-virtual {v5, v2}, Lr0/G;->D(Landroidx/media3/common/Format;)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p1, Landroidx/media3/common/Format;->channelCount:I

    iget v6, p1, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v7, 0x4

    invoke-static {v7, v2, v6}, Lk0/C;->A(III)Landroidx/media3/common/Format;

    move-result-object v2

    check-cast v3, Lr0/G;

    invoke-virtual {v3, v2}, Lr0/G;->j(Landroidx/media3/common/Format;)I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "audio/ac3"

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v5, v2

    :goto_1
    invoke-direct {v1, v0, p1, v5}, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;-><init>(ILandroidx/media3/common/Format;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1
.end method

.method public final d(Lp0/c;)Landroidx/media3/common/Format;
    .locals 2

    check-cast p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->u:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->v:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget p1, p1, Landroidx/media3/decoder/ffmpeg/FfmpegAudioDecoder;->q:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FfmpegAudioRenderer"

    return-object v0
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
