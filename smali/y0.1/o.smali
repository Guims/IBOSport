.class public final Ly0/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ly0/o;->a:Ljava/lang/String;

    iput-object p2, p0, Ly0/o;->b:Ljava/lang/String;

    iput-object p3, p0, Ly0/o;->c:Ljava/lang/String;

    iput-object p4, p0, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Ly0/o;->g:Z

    iput-boolean p6, p0, Ly0/o;->e:Z

    iput-boolean p7, p0, Ly0/o;->f:Z

    iput-boolean p8, p0, Ly0/o;->h:Z

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ly0/o;->i:Z

    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-static {p1, v0}, Lk0/C;->f(II)I

    move-result p1

    mul-int/2addr p1, v0

    invoke-static {p2, v1}, Lk0/C;->f(II)I

    move-result p2

    mul-int/2addr p2, v1

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v2, Landroid/graphics/Point;->x:I

    iget p2, v2, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Ly0/o;
    .locals 9

    new-instance v0, Ly0/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    const-string v3, "adaptive-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lk0/C;->a:I

    const/16 v4, 0x16

    if-gt v3, v4, :cond_1

    sget-object v3, Lk0/C;->d:Ljava/lang/String;

    const-string v4, "ODROID-XU3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Nexus 10"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "OMX.Exynos.AVC.Decoder"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v1

    :goto_1
    if-eqz p3, :cond_3

    const-string v3, "tunneled-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    :cond_3
    if-nez p5, :cond_5

    if-eqz p3, :cond_4

    const-string p5, "secure-playback"

    invoke-virtual {p3, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_2

    :cond_4
    move v7, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v2

    :goto_3
    sget p5, Lk0/C;->a:I

    const/16 v3, 0x23

    if-lt p5, v3, :cond_6

    if-eqz p3, :cond_6

    const-string p5, "detached-surface"

    invoke-virtual {p3, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_6

    move v8, v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v2, p1

    goto :goto_4

    :cond_6
    move v8, v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v1, p0

    :goto_4
    invoke-direct/range {v0 .. v8}, Ly0/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final b(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 8

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v2, Lk0/C;->a:I

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Ly0/o;->i:Z

    if-eqz v1, :cond_a

    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v2, p2, Landroidx/media3/common/Format;->rotationDegrees:I

    if-eq v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget-boolean v1, p0, Ly0/o;->e:Z

    if-nez v1, :cond_3

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    iget v2, p2, Landroidx/media3/common/Format;->width:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroidx/media3/common/Format;->height:I

    iget v2, p2, Landroidx/media3/common/Format;->height:I

    if-eq v1, v2, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x200

    :cond_3
    iget-object v1, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isEquivalentToAssumedSdrDefault(Landroidx/media3/common/ColorInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isEquivalentToAssumedSdrDefault(Landroidx/media3/common/ColorInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v2, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    :cond_5
    sget-object v1, Lk0/C;->d:Ljava/lang/String;

    const-string v2, "SM-T230"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    iget-object v2, p0, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit8 v0, v0, 0x2

    :cond_6
    if-nez v0, :cond_8

    new-instance v1, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    :goto_1
    move v5, v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    goto :goto_1

    :goto_2
    const/4 v6, 0x0

    iget-object v2, p0, Ly0/o;->a:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v1

    :cond_8
    move-object v4, p1

    move-object v5, p2

    :cond_9
    move v7, v0

    goto/16 :goto_3

    :cond_a
    move-object v4, p1

    move-object v5, p2

    iget p1, v4, Landroidx/media3/common/Format;->channelCount:I

    iget p2, v5, Landroidx/media3/common/Format;->channelCount:I

    if-eq p1, p2, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget p1, v4, Landroidx/media3/common/Format;->sampleRate:I

    iget p2, v5, Landroidx/media3/common/Format;->sampleRate:I

    if-eq p1, p2, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget p1, v4, Landroidx/media3/common/Format;->pcmEncoding:I

    iget p2, v5, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eq p1, p2, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget-object p1, p0, Ly0/o;->b:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string p2, "audio/mp4a-latm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-static {v4}, Ly0/A;->d(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p2

    invoke-static {v5}, Ly0/A;->d(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v1

    if-eqz p2, :cond_e

    if-eqz v1, :cond_e

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2a

    if-ne p2, v2, :cond_e

    if-ne v1, v2, :cond_e

    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v3, p0, Ly0/o;->a:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v2

    :cond_e
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p2

    if-nez p2, :cond_f

    or-int/lit8 v0, v0, 0x20

    :cond_f
    const-string p2, "audio/opus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    or-int/lit8 p1, v0, 0x2

    move v0, p1

    :cond_10
    if-nez v0, :cond_9

    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Ly0/o;->a:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v2

    :goto_3
    new-instance v2, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v3, p0, Ly0/o;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v2
.end method

.method public final c(Landroidx/media3/common/Format;Z)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v1}, Ly0/A;->d(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v5, v0, Ly0/o;->c:Ljava/lang/String;

    const-string v6, "video/hevc"

    if-eqz v3, :cond_8

    const-string v9, "video/mv-hevc"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    const/16 v17, 0x1

    goto/16 :goto_d

    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, v1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    array-length v11, v9

    const/4 v12, 0x3

    if-le v11, v12, :cond_5

    new-array v13, v12, [Z

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v14

    const/4 v15, 0x0

    :goto_2
    array-length v7, v9

    if-ge v15, v7, :cond_3

    array-length v7, v9

    invoke-static {v9, v15, v7, v13}, Ll0/n;->b([BII[Z)I

    move-result v7

    array-length v15, v9

    if-eq v7, v15, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v15, v7, 0x3

    goto :goto_2

    :cond_3
    invoke-virtual {v14}, Lp3/E;->i()Lp3/Y;

    move-result-object v7

    const/4 v13, 0x0

    :goto_3
    iget v14, v7, Lp3/Y;->s:I

    if-ge v13, v14, :cond_5

    invoke-virtual {v7, v13}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v14, v12

    if-ge v14, v11, :cond_4

    new-instance v14, LI0/N;

    invoke-virtual {v7, v13}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v12

    invoke-direct {v14, v9, v15, v11}, LI0/N;-><init>([BII)V

    invoke-static {v14}, Ll0/n;->d(LI0/N;)LJ/q;

    move-result-object v15

    iget v8, v15, LJ/q;->b:I

    const/16 v10, 0x21

    if-ne v8, v10, :cond_4

    iget v8, v15, LJ/q;->c:I

    if-nez v8, :cond_4

    invoke-virtual {v14, v4}, LI0/N;->t(I)V

    invoke-virtual {v14, v12}, LI0/N;->i(I)I

    move-result v2

    invoke-virtual {v14}, LI0/N;->s()V

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-static {v14, v3, v2, v8}, Ll0/n;->e(LI0/N;ZILl0/g;)Ll0/g;

    move-result-object v2

    iget v9, v2, Ll0/g;->a:I

    iget-boolean v10, v2, Ll0/g;->b:Z

    iget v11, v2, Ll0/g;->c:I

    iget v12, v2, Ll0/g;->d:I

    iget-object v13, v2, Ll0/g;->e:[I

    iget v14, v2, Ll0/g;->f:I

    invoke-static/range {v9 .. v14}, Lk0/e;->a(IZII[II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    move-object v2, v8

    :goto_4
    if-nez v2, :cond_7

    move-object v2, v8

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v7, Lk0/C;->a:I

    const/4 v7, -0x1

    const-string v8, "\\."

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    iget-object v7, v1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v2, v3, v7}, Lk0/e;->b(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object v2

    :cond_8
    :goto_5
    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v7, "video/dolby-vision"

    iget-object v8, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x2

    iget-object v10, v0, Ly0/o;->b:Ljava/lang/String;

    if-eqz v7, :cond_b

    const-string v7, "video/avc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v3, v8

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v9

    goto :goto_6

    :cond_b
    :goto_7
    iget-boolean v7, v0, Ly0/o;->i:Z

    if-nez v7, :cond_c

    const/16 v7, 0x2a

    if-eq v3, v7, :cond_c

    goto/16 :goto_0

    :cond_c
    iget-object v7, v0, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v7, :cond_d

    iget-object v11, v7, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v11, :cond_e

    :cond_d
    const/4 v11, 0x0

    new-array v12, v11, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object v11, v12

    :cond_e
    sget v12, Lk0/C;->a:I

    const/16 v13, 0x17

    if-gt v12, v13, :cond_1a

    const-string v12, "video/x-vnd.on2.vp9"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    array-length v12, v11

    if-nez v12, :cond_1a

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_8

    :cond_f
    const/4 v11, 0x0

    :goto_8
    const v7, 0xaba9500

    if-lt v11, v7, :cond_10

    const/16 v4, 0x400

    goto :goto_9

    :cond_10
    const v7, 0x7270e00

    if-lt v11, v7, :cond_11

    const/16 v4, 0x200

    goto :goto_9

    :cond_11
    const v7, 0x3938700

    if-lt v11, v7, :cond_12

    const/16 v4, 0x100

    goto :goto_9

    :cond_12
    const v7, 0x1c9c380

    if-lt v11, v7, :cond_13

    const/16 v4, 0x80

    goto :goto_9

    :cond_13
    const v7, 0x112a880

    if-lt v11, v7, :cond_14

    const/16 v4, 0x40

    goto :goto_9

    :cond_14
    const v7, 0xb71b00

    if-lt v11, v7, :cond_15

    const/16 v4, 0x20

    goto :goto_9

    :cond_15
    const v7, 0x6ddd00

    if-lt v11, v7, :cond_16

    const/16 v4, 0x10

    goto :goto_9

    :cond_16
    const v7, 0x36ee80

    if-lt v11, v7, :cond_17

    move v4, v8

    goto :goto_9

    :cond_17
    const v7, 0x1b7740

    if-lt v11, v7, :cond_18

    goto :goto_9

    :cond_18
    const v4, 0xc3500

    if-lt v11, v4, :cond_19

    move v4, v9

    goto :goto_9

    :cond_19
    const/4 v4, 0x1

    :goto_9
    new-instance v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v7}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    const/4 v8, 0x1

    iput v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput v4, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    filled-new-array {v7}, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v11

    :cond_1a
    array-length v4, v11

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v4, :cond_1d

    aget-object v8, v11, v7

    iget v12, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v12, v3, :cond_1b

    iget v8, v8, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v8, v2, :cond_1c

    if-nez p2, :cond_1b

    goto :goto_c

    :cond_1b
    :goto_b
    const/16 v17, 0x1

    goto :goto_e

    :cond_1c
    :goto_c
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v9, v3, :cond_0

    sget-object v8, Lk0/C;->b:Ljava/lang/String;

    const-string v12, "sailfish"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    const-string v12, "marlin"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_b

    :goto_d
    return v17

    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "codec.profileLevel, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly0/o;->g(Ljava/lang/String;)V

    const/16 v16, 0x0

    return v16
.end method

.method public final d(Landroidx/media3/common/Format;)Z
    .locals 7

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Ly0/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Ly0/A;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ly0/o;->c(Landroidx/media3/common/Format;Z)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Ly0/o;->i:Z

    if-eqz v3, :cond_4

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    if-lez v1, :cond_f

    iget v2, p1, Landroidx/media3/common/Format;->height:I

    if-gtz v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget p1, p1, Landroidx/media3/common/Format;->frameRate:F

    float-to-double v3, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Ly0/o;->f(IID)Z

    move-result p1

    return p1

    :cond_4
    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    iget-object v4, p0, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    if-nez v4, :cond_5

    const-string p1, "sampleRate.caps"

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v6

    if-nez v6, :cond_6

    const-string p1, "sampleRate.aCaps"

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v2

    :cond_6
    invoke-virtual {v6, v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sampleRate.support, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v2

    :cond_7
    iget p1, p1, Landroidx/media3/common/Format;->channelCount:I

    if-eq p1, v5, :cond_f

    if-nez v4, :cond_8

    const-string p1, "channelCount.caps"

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v2

    :cond_8
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-nez v3, :cond_9

    const-string p1, "channelCount.aCaps"

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v2

    :cond_9
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    if-gt v3, v0, :cond_e

    sget v4, Lk0/C;->a:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_a

    if-lez v3, :cond_a

    goto/16 :goto_2

    :cond_a
    const-string v4, "audio/mpeg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/3gpp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/amr-wb"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/vorbis"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/opus"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/raw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/flac"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/g711-alaw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/g711-mlaw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "audio/gsm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    :cond_b
    const-string v4, "audio/ac3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x6

    goto :goto_1

    :cond_c
    const-string v4, "audio/eac3"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x10

    goto :goto_1

    :cond_d
    const/16 v1, 0x1e

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AssumedMaxChannelAdjustment: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecInfo"

    invoke-static {v4, v3}, Lk0/c;->z(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :cond_e
    :goto_2
    if-ge v3, p1, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channelCount.support, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v2

    :cond_f
    :goto_3
    return v0
.end method

.method public final e(Landroidx/media3/common/Format;)Z
    .locals 1

    iget-boolean v0, p0, Ly0/o;->i:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Ly0/o;->e:Z

    return p1

    :cond_0
    invoke-static {p1}, Ly0/A;->d(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f(IID)Z
    .locals 11

    const/4 v0, 0x0

    iget-object v1, p0, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v1, :cond_0

    const-string p1, "sizeAndRate.caps"

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v0

    :cond_1
    sget v2, Lk0/C;->a:I

    const/16 v3, 0x1d

    const-string v4, "@"

    const-string v5, "x"

    const/4 v6, 0x1

    if-lt v2, v3, :cond_e

    const/4 v7, 0x2

    if-lt v2, v3, :cond_b

    sget-object v3, Lcom/bumptech/glide/c;->i:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v1}, Landroidx/lifecycle/D;->h(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, Landroidx/lifecycle/D;->i()V

    double-to-int v8, p3

    invoke-static {p1, p2, v8}, Landroidx/lifecycle/D;->c(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v8

    move v9, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Landroidx/lifecycle/D;->d(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v10

    invoke-static {v10, v8}, Landroidx/lifecycle/D;->x(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    move v3, v6

    :goto_1
    if-ne v3, v6, :cond_c

    sget-object v8, Lcom/bumptech/glide/c;->i:Ljava/lang/Boolean;

    if-nez v8, :cond_c

    const/16 v8, 0x23

    if-lt v2, v8, :cond_7

    :cond_6
    move v2, v0

    goto :goto_3

    :cond_7
    invoke-static {v0}, Ly0/p;->a(Z)I

    move-result v2

    invoke-static {v6}, Ly0/p;->a(Z)I

    move-result v8

    if-nez v2, :cond_9

    :cond_8
    :goto_2
    move v2, v6

    goto :goto_3

    :cond_9
    if-nez v8, :cond_a

    if-eq v2, v7, :cond_6

    goto :goto_2

    :cond_a
    if-ne v2, v7, :cond_8

    if-eq v8, v7, :cond_6

    goto :goto_2

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/bumptech/glide/c;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    :cond_b
    :goto_4
    move v3, v0

    :cond_c
    if-ne v3, v7, :cond_d

    goto/16 :goto_6

    :cond_d
    if-ne v3, v6, :cond_e

    const-string v1, "sizeAndRate.cover, "

    invoke-static {v1, p1, v5, p2, v4}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v0

    :cond_e
    invoke-static {v1, p1, p2, p3, p4}, Ly0/o;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_12

    if-ge p1, p2, :cond_11

    const-string v2, "OMX.MTK.VIDEO.DECODER.HEVC"

    iget-object v3, p0, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "mcv5a"

    sget-object v7, Lk0/C;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {v1, p2, p1, p3, p4}, Ly0/o;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_5

    :cond_10
    const-string v0, "sizeAndRate.rotated, "

    invoke-static {v0, p1, v5, p2, v4}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "AssumedSupport ["

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ly0/o;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lk0/C;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, Lk0/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_11
    :goto_5
    const-string v1, "sizeAndRate.support, "

    invoke-static {v1, p1, v5, p2, v4}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly0/o;->g(Ljava/lang/String;)V

    return v0

    :cond_12
    :goto_6
    return v6
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NoSupport ["

    const-string v1, "] ["

    invoke-static {v0, p1, v1}, LB/f;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ly0/o;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ly0/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lk0/C;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lk0/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/o;->a:Ljava/lang/String;

    return-object v0
.end method
