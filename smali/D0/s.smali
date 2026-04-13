.class public final LD0/s;
.super LD0/r;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Z

.field public final D:Z

.field public final E:I

.field public final F:Z

.field public final G:Z

.field public final H:I

.field public final t:Z

.field public final u:LD0/l;

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILD0/l;IIZ)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, LD0/r;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iput-object p4, p0, LD0/s;->u:LD0/l;

    iget-boolean p1, p4, LD0/l;->b:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p2, 0x0

    iput-boolean p2, p0, LD0/s;->D:Z

    const/high16 p3, -0x40800000    # -1.0f

    const/4 p6, -0x1

    const/4 v0, 0x1

    if-eqz p7, :cond_5

    iget-object v1, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->width:I

    if-eq v2, p6, :cond_1

    iget v3, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    if-gt v2, v3, :cond_5

    :cond_1
    iget v2, v1, Landroidx/media3/common/Format;->height:I

    if-eq v2, p6, :cond_2

    iget v3, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    if-gt v2, v3, :cond_5

    :cond_2
    iget v2, v1, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v3, v2, p3

    if-eqz v3, :cond_3

    iget v3, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    :cond_3
    iget v1, v1, Landroidx/media3/common/Format;->bitrate:I

    if-eq v1, p6, :cond_4

    iget v2, p4, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    if-gt v1, v2, :cond_5

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v1, p2

    :goto_1
    iput-boolean v1, p0, LD0/s;->t:Z

    if-eqz p7, :cond_a

    iget-object p7, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget v1, p7, Landroidx/media3/common/Format;->width:I

    if-eq v1, p6, :cond_6

    iget v2, p4, Landroidx/media3/common/TrackSelectionParameters;->minVideoWidth:I

    if-lt v1, v2, :cond_a

    :cond_6
    iget v1, p7, Landroidx/media3/common/Format;->height:I

    if-eq v1, p6, :cond_7

    iget v2, p4, Landroidx/media3/common/TrackSelectionParameters;->minVideoHeight:I

    if-lt v1, v2, :cond_a

    :cond_7
    iget v1, p7, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v2, v1, p3

    if-eqz v2, :cond_8

    iget v2, p4, Landroidx/media3/common/TrackSelectionParameters;->minVideoFrameRate:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    :cond_8
    iget p7, p7, Landroidx/media3/common/Format;->bitrate:I

    if-eq p7, p6, :cond_9

    iget v1, p4, Landroidx/media3/common/TrackSelectionParameters;->minVideoBitrate:I

    if-lt p7, v1, :cond_a

    :cond_9
    move p7, v0

    goto :goto_2

    :cond_a
    move p7, p2

    :goto_2
    iput-boolean p7, p0, LD0/s;->v:Z

    invoke-static {p5, p2}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p7

    iput-boolean p7, p0, LD0/s;->w:Z

    iget-object p7, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget v1, p7, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float p3, v1, p3

    if-eqz p3, :cond_b

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p3, v1, p3

    if-ltz p3, :cond_b

    move p3, v0

    goto :goto_3

    :cond_b
    move p3, p2

    :goto_3
    iput-boolean p3, p0, LD0/s;->x:Z

    iget p3, p7, Landroidx/media3/common/Format;->bitrate:I

    iput p3, p0, LD0/s;->y:I

    invoke-virtual {p7}, Landroidx/media3/common/Format;->getPixelCount()I

    move-result p3

    iput p3, p0, LD0/s;->z:I

    iget-object p3, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->roleFlags:I

    iget p7, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoRoleFlags:I

    sget-object v1, LD0/t;->j:Lp3/X;

    const v1, 0x7fffffff

    if-eqz p3, :cond_c

    if-ne p3, p7, :cond_c

    move p3, v1

    goto :goto_4

    :cond_c
    and-int/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    :goto_4
    iput p3, p0, LD0/s;->B:I

    iget-object p3, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget p3, p3, Landroidx/media3/common/Format;->roleFlags:I

    if-eqz p3, :cond_e

    and-int/2addr p3, v0

    if-eqz p3, :cond_d

    goto :goto_5

    :cond_d
    move p3, p2

    goto :goto_6

    :cond_e
    :goto_5
    move p3, v0

    :goto_6
    iput-boolean p3, p0, LD0/s;->C:Z

    move p3, p2

    :goto_7
    iget-object p7, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lp3/H;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p3, p7, :cond_10

    iget-object p7, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object p7, p7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p7, :cond_f

    iget-object v2, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lp3/H;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_f

    move v1, p3

    goto :goto_8

    :cond_f
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    iput v1, p0, LD0/s;->A:I

    invoke-static {p5}, Landroidx/media3/exoplayer/RendererCapabilities;->getDecoderSupport(I)I

    move-result p3

    const/16 p4, 0x80

    if-ne p3, p4, :cond_11

    move p3, v0

    goto :goto_9

    :cond_11
    move p3, p2

    :goto_9
    iput-boolean p3, p0, LD0/s;->F:Z

    invoke-static {p5}, Landroidx/media3/exoplayer/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result p3

    const/16 p4, 0x40

    if-ne p3, p4, :cond_12

    move p3, v0

    goto :goto_a

    :cond_12
    move p3, p2

    :goto_a
    iput-boolean p3, p0, LD0/s;->G:Z

    iget-object p3, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object p4, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 p7, 0x2

    if-nez p4, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    sparse-switch v1, :sswitch_data_0

    :goto_b
    move p4, p6

    goto :goto_c

    :sswitch_0
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_14

    goto :goto_b

    :cond_14
    move p4, v2

    goto :goto_c

    :sswitch_1
    const-string v1, "video/avc"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_15

    goto :goto_b

    :cond_15
    move p4, v3

    goto :goto_c

    :sswitch_2
    const-string v1, "video/hevc"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_16

    goto :goto_b

    :cond_16
    move p4, p7

    goto :goto_c

    :sswitch_3
    const-string v1, "video/av01"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_17

    goto :goto_b

    :cond_17
    move p4, v0

    goto :goto_c

    :sswitch_4
    const-string v1, "video/dolby-vision"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_18

    goto :goto_b

    :cond_18
    move p4, p2

    :goto_c
    packed-switch p4, :pswitch_data_0

    :goto_d
    move v2, p2

    goto :goto_e

    :pswitch_0
    move v2, p7

    goto :goto_e

    :pswitch_1
    move v2, v0

    goto :goto_e

    :pswitch_2
    move v2, v3

    goto :goto_e

    :pswitch_3
    const/4 v2, 0x5

    :goto_e
    :pswitch_4
    iput v2, p0, LD0/s;->H:I

    iget-boolean p4, p0, LD0/s;->t:Z

    iget-object v1, p0, LD0/s;->u:LD0/l;

    iget v2, p3, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_19

    goto :goto_f

    :cond_19
    iget-boolean v2, v1, LD0/l;->f:Z

    invoke-static {p5, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_f

    :cond_1a
    if-nez p4, :cond_1b

    iget-boolean v2, v1, LD0/l;->a:Z

    if-nez v2, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-static {p5, p2}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-boolean p2, p0, LD0/s;->v:Z

    if-eqz p2, :cond_1c

    if-eqz p4, :cond_1c

    iget p2, p3, Landroidx/media3/common/Format;->bitrate:I

    if-eq p2, p6, :cond_1c

    iget-boolean p2, v1, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-nez p2, :cond_1c

    iget-boolean p2, v1, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-nez p2, :cond_1c

    and-int/2addr p1, p5

    if-eqz p1, :cond_1c

    move p2, p7

    goto :goto_f

    :cond_1c
    move p2, v0

    :goto_f
    iput p2, p0, LD0/s;->E:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(LD0/s;LD0/s;)I
    .locals 4

    iget-boolean v0, p0, LD0/s;->w:Z

    iget-boolean v1, p1, LD0/s;->w:Z

    sget-object v2, Lp3/y;->a:Lp3/w;

    invoke-virtual {v2, v0, v1}, Lp3/w;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/s;->B:I

    iget v2, p1, LD0/s;->B:I

    invoke-virtual {v0, v1, v2}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/s;->C:Z

    iget-boolean v2, p1, LD0/s;->C:Z

    invoke-virtual {v0, v1, v2}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/s;->x:Z

    iget-boolean v2, p1, LD0/s;->x:Z

    invoke-virtual {v0, v1, v2}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/s;->t:Z

    iget-boolean v2, p1, LD0/s;->t:Z

    invoke-virtual {v0, v1, v2}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/s;->v:Z

    iget-boolean v2, p1, LD0/s;->v:Z

    invoke-virtual {v0, v1, v2}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/s;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, LD0/s;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lp3/W;->r:Lp3/W;

    invoke-virtual {v0, v1, v2, v3}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/s;->F:Z

    iget-boolean v2, p1, LD0/s;->F:Z

    invoke-virtual {v0, v1, v2}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v2, p0, LD0/s;->G:Z

    iget-boolean v3, p1, LD0/s;->G:Z

    invoke-virtual {v0, v2, v3}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget p0, p0, LD0/s;->H:I

    iget p1, p1, LD0/s;->H:I

    invoke-virtual {v0, p0, p1}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lp3/y;->e()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LD0/s;->E:I

    return v0
.end method

.method public final b(LD0/r;)Z
    .locals 3

    check-cast p1, LD0/s;

    iget-boolean v0, p0, LD0/s;->D:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    sget v2, Lk0/C;->a:I

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LD0/s;->u:LD0/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, LD0/s;->F:Z

    iget-boolean v1, p1, LD0/s;->F:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, LD0/s;->G:Z

    iget-boolean p1, p1, LD0/s;->G:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
