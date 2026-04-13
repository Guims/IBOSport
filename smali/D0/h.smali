.class public final LD0/h;
.super LD0/r;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:Z

.field public final D:I

.field public final E:I

.field public final F:Z

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:I

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final t:I

.field public final u:Z

.field public final v:Ljava/lang/String;

.field public final w:LD0/l;

.field public final x:Z

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILD0/l;IZLD0/g;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, LD0/r;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iput-object p4, p0, LD0/h;->w:LD0/l;

    iget-boolean p1, p4, LD0/l;->d:Z

    const/16 p2, 0x18

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    :goto_0
    const/4 p3, 0x0

    iput-boolean p3, p0, LD0/h;->B:Z

    iget-object p8, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object p8, p8, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p8}, LD0/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    iput-object p8, p0, LD0/h;->v:Ljava/lang/String;

    invoke-static {p5, p3}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p8

    iput-boolean p8, p0, LD0/h;->x:Z

    move p8, p3

    :goto_1
    iget-object v0, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lp3/H;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const v1, 0x7fffffff

    if-ge p8, v0, :cond_2

    iget-object v0, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object v2, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lp3/H;

    invoke-interface {v2, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2, p3}, LD0/t;->c(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p8, p8, 0x1

    goto :goto_1

    :cond_2
    move v0, p3

    move p8, v1

    :goto_2
    iput p8, p0, LD0/h;->z:I

    iput v0, p0, LD0/h;->y:I

    iget-object p8, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget p8, p8, Landroidx/media3/common/Format;->roleFlags:I

    iget v0, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioRoleFlags:I

    if-eqz p8, :cond_3

    if-ne p8, v0, :cond_3

    move p8, v1

    goto :goto_3

    :cond_3
    and-int/2addr p8, v0

    invoke-static {p8}, Ljava/lang/Integer;->bitCount(I)I

    move-result p8

    :goto_3
    iput p8, p0, LD0/h;->A:I

    iget-object p8, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget v0, p8, Landroidx/media3/common/Format;->roleFlags:I

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, p3

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    iput-boolean v0, p0, LD0/h;->C:Z

    iget v0, p8, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, p3

    :goto_6
    iput-boolean v0, p0, LD0/h;->F:Z

    iget-object v0, p8, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-nez v0, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_7
    move v0, v4

    goto :goto_8

    :sswitch_0
    const-string v5, "audio/iamf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v3

    goto :goto_8

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    move v0, v2

    goto :goto_8

    :sswitch_2
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    move v0, p3

    :goto_8
    packed-switch v0, :pswitch_data_0

    :goto_9
    move v0, p3

    goto :goto_a

    :pswitch_0
    move v0, v2

    :goto_a
    iput-boolean v0, p0, LD0/h;->M:Z

    iget v0, p8, Landroidx/media3/common/Format;->channelCount:I

    iput v0, p0, LD0/h;->G:I

    iget v5, p8, Landroidx/media3/common/Format;->sampleRate:I

    iput v5, p0, LD0/h;->H:I

    iget v5, p8, Landroidx/media3/common/Format;->bitrate:I

    iput v5, p0, LD0/h;->I:I

    if-eq v5, v4, :cond_b

    iget v6, p4, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    if-gt v5, v6, :cond_d

    :cond_b
    if-eq v0, v4, :cond_c

    iget v5, p4, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    if-gt v0, v5, :cond_d

    :cond_c
    invoke-virtual {p7, p8}, LD0/g;->apply(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_d

    move p7, v2

    goto :goto_b

    :cond_d
    move p7, p3

    :goto_b
    iput-boolean p7, p0, LD0/h;->u:Z

    sget p7, Lk0/C;->a:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    sget p8, Lk0/C;->a:I

    if-lt p8, p2, :cond_e

    invoke-virtual {p7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p2

    const-string p7, ","

    invoke-virtual {p2, p7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_c

    :cond_e
    new-array p2, v2, [Ljava/lang/String;

    iget-object p7, p7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p7

    aput-object p7, p2, p3

    :goto_c
    move p7, p3

    :goto_d
    array-length p8, p2

    if-ge p7, p8, :cond_f

    aget-object p8, p2, p7

    invoke-static {p8}, Lk0/C;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    aput-object p8, p2, p7

    add-int/lit8 p7, p7, 0x1

    goto :goto_d

    :cond_f
    move p7, p3

    :goto_e
    array-length p8, p2

    if-ge p7, p8, :cond_11

    iget-object p8, p0, LD0/r;->s:Landroidx/media3/common/Format;

    aget-object v0, p2, p7

    invoke-static {p8, v0, p3}, LD0/t;->c(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p8

    if-lez p8, :cond_10

    goto :goto_f

    :cond_10
    add-int/lit8 p7, p7, 0x1

    goto :goto_e

    :cond_11
    move p8, p3

    move p7, v1

    :goto_f
    iput p7, p0, LD0/h;->D:I

    iput p8, p0, LD0/h;->E:I

    move p2, p3

    :goto_10
    iget-object p7, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lp3/H;

    invoke-virtual {p7}, Ljava/util/AbstractCollection;->size()I

    move-result p7

    if-ge p2, p7, :cond_13

    iget-object p7, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object p7, p7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p7, :cond_12

    iget-object p8, p4, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lp3/H;

    invoke-interface {p8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_12

    move v1, p2

    goto :goto_11

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_13
    :goto_11
    iput v1, p0, LD0/h;->J:I

    invoke-static {p5}, Landroidx/media3/exoplayer/RendererCapabilities;->getDecoderSupport(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_14

    move p2, v2

    goto :goto_12

    :cond_14
    move p2, p3

    :goto_12
    iput-boolean p2, p0, LD0/h;->K:Z

    invoke-static {p5}, Landroidx/media3/exoplayer/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_15

    move p2, v2

    goto :goto_13

    :cond_15
    move p2, p3

    :goto_13
    iput-boolean p2, p0, LD0/h;->L:Z

    iget-object p2, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget-boolean p4, p0, LD0/h;->u:Z

    iget-object p7, p0, LD0/h;->w:LD0/l;

    iget-boolean p8, p7, LD0/l;->f:Z

    invoke-static {p5, p8}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p8

    if-nez p8, :cond_16

    goto :goto_14

    :cond_16
    if-nez p4, :cond_17

    iget-boolean p8, p7, LD0/l;->c:Z

    if-nez p8, :cond_17

    goto :goto_14

    :cond_17
    iget-object p8, p7, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget p8, p8, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-ne p8, v3, :cond_18

    invoke-static {p7, p5, p2}, LD0/t;->g(LD0/l;ILandroidx/media3/common/Format;)Z

    move-result p8

    if-nez p8, :cond_18

    goto :goto_14

    :cond_18
    invoke-static {p5, p3}, Landroidx/media3/exoplayer/RendererCapabilities;->isFormatSupported(IZ)Z

    move-result p3

    if-eqz p3, :cond_1a

    if-eqz p4, :cond_1a

    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    if-eq p2, v4, :cond_1a

    iget-boolean p2, p7, Landroidx/media3/common/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    if-nez p2, :cond_1a

    iget-boolean p2, p7, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    if-nez p2, :cond_1a

    iget-boolean p2, p7, LD0/l;->g:Z

    if-nez p2, :cond_19

    if-nez p6, :cond_1a

    :cond_19
    iget-object p2, p7, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget p2, p2, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->audioOffloadMode:I

    if-eq p2, v3, :cond_1a

    and-int/2addr p1, p5

    if-eqz p1, :cond_1a

    move p3, v3

    goto :goto_14

    :cond_1a
    move p3, v2

    :goto_14
    iput p3, p0, LD0/h;->t:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59afdf4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LD0/h;->t:I

    return v0
.end method

.method public final b(LD0/r;)Z
    .locals 5

    check-cast p1, LD0/h;

    iget-object v0, p1, LD0/r;->s:Landroidx/media3/common/Format;

    iget-object v1, p0, LD0/h;->w:LD0/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LD0/r;->s:Landroidx/media3/common/Format;

    iget v2, v1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v4, v0, Landroidx/media3/common/Format;->channelCount:I

    if-ne v2, v4, :cond_1

    iget-boolean v2, p0, LD0/h;->B:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget v1, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v1, v3, :cond_1

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v1, v0, :cond_1

    iget-boolean v0, p0, LD0/h;->K:Z

    iget-boolean v1, p1, LD0/h;->K:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, LD0/h;->L:Z

    iget-boolean p1, p1, LD0/h;->L:Z

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(LD0/h;)I
    .locals 7

    iget-boolean v0, p0, LD0/h;->x:Z

    iget-boolean v1, p0, LD0/h;->u:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, LD0/t;->j:Lp3/X;

    goto :goto_0

    :cond_0
    sget-object v2, LD0/t;->j:Lp3/X;

    invoke-virtual {v2}, Lp3/X;->a()Lp3/X;

    move-result-object v2

    :goto_0
    iget-boolean v3, p1, LD0/h;->x:Z

    iget v4, p1, LD0/h;->I:I

    sget-object v5, Lp3/y;->a:Lp3/w;

    invoke-virtual {v5, v0, v3}, Lp3/w;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v3, p0, LD0/h;->z:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, LD0/h;->z:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lp3/W;->r:Lp3/W;

    invoke-virtual {v0, v3, v5, v6}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget v3, p0, LD0/h;->y:I

    iget v5, p1, LD0/h;->y:I

    invoke-virtual {v0, v3, v5}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    iget v3, p0, LD0/h;->A:I

    iget v5, p1, LD0/h;->A:I

    invoke-virtual {v0, v3, v5}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    iget-boolean v3, p0, LD0/h;->F:Z

    iget-boolean v5, p1, LD0/h;->F:Z

    invoke-virtual {v0, v3, v5}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v3, p0, LD0/h;->C:Z

    iget-boolean v5, p1, LD0/h;->C:Z

    invoke-virtual {v0, v3, v5}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v3, p0, LD0/h;->D:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, LD0/h;->D:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v6}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget v3, p0, LD0/h;->E:I

    iget v5, p1, LD0/h;->E:I

    invoke-virtual {v0, v3, v5}, Lp3/y;->a(II)Lp3/y;

    move-result-object v0

    iget-boolean v3, p1, LD0/h;->u:Z

    invoke-virtual {v0, v1, v3}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/h;->J:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, LD0/h;->J:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v6}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget-object v1, p0, LD0/h;->w:LD0/l;

    iget-boolean v1, v1, Landroidx/media3/common/TrackSelectionParameters;->forceLowestBitrate:Z

    iget v3, p0, LD0/h;->I:I

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, LD0/t;->j:Lp3/X;

    invoke-virtual {v6}, Lp3/X;->a()Lp3/X;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, LD0/h;->K:Z

    iget-boolean v5, p1, LD0/h;->K:Z

    invoke-virtual {v0, v1, v5}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/h;->L:Z

    iget-boolean v5, p1, LD0/h;->L:Z

    invoke-virtual {v0, v1, v5}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget-boolean v1, p0, LD0/h;->M:Z

    iget-boolean v5, p1, LD0/h;->M:Z

    invoke-virtual {v0, v1, v5}, Lp3/y;->c(ZZ)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/h;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v5, p1, LD0/h;->G:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget v1, p0, LD0/h;->H:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v5, p1, LD0/h;->H:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v2}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    iget-object p1, p1, LD0/h;->v:Ljava/lang/String;

    sget v1, Lk0/C;->a:I

    iget-object v1, p0, LD0/h;->v:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Lp3/y;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Lp3/y;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LD0/h;

    invoke-virtual {p0, p1}, LD0/h;->c(LD0/h;)I

    move-result p1

    return p1
.end method
