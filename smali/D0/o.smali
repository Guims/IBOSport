.class public final LD0/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/media/Spatializer;

.field public final b:Z

.field public c:Landroid/os/Handler;

.field public d:LD0/n;


# direct methods
.method public constructor <init>(Landroid/media/Spatializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/o;->a:Landroid/media/Spatializer;

    invoke-static {p1}, LD0/m;->a(Landroid/media/Spatializer;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LD0/o;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/iamf"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15

    if-ne v0, v2, :cond_4

    :cond_2
    const/16 v0, 0x18

    goto :goto_0

    :cond_3
    iget v0, p2, Landroidx/media3/common/Format;->channelCount:I

    :cond_4
    :goto_0
    invoke-static {v0}, Lk0/C;->r(I)I

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget p2, p2, Landroidx/media3/common/Format;->sampleRate:I

    if-eq p2, v1, :cond_6

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    :cond_6
    iget-object p2, p0, LD0/o;->a:Landroid/media/Spatializer;

    invoke-virtual {p1}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {p2, p1, v0}, LD0/m;->h(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p1

    return p1
.end method
