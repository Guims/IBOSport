.class public abstract Ly0/p;
.super Ljava/lang/Object;


# direct methods
.method public static a(Z)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v2, "video/avc"

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Ly0/u;->k:Ly0/j;

    invoke-static {v2, v1, p0, v0}, Ly0/A;->g(Ly0/u;Landroidx/media3/common/Format;ZZ)Lp3/Y;

    move-result-object p0

    move v1, v0

    :goto_0
    iget v2, p0, Lp3/Y;->s:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/o;

    iget-object v2, v2, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/o;

    iget-object v2, v2, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly0/o;

    iget-object v2, v2, Ly0/o;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/D;->h(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Landroidx/lifecycle/D;->i()V

    invoke-static {}, Landroidx/lifecycle/D;->b()Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object p0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/D;->d(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v3

    invoke-static {v3, p0}, Landroidx/lifecycle/D;->x(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v3
    :try_end_0
    .catch Ly0/x; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return v0
.end method
