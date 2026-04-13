.class public Lib/player/models/AudioEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avgFrameRate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "avg_frame_rate"
    .end annotation
.end field

.field private bitRate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "bit_rate"
    .end annotation
.end field

.field private bitsPerSample:I
    .annotation runtime Lm4/b;
        value = "bits_per_sample"
    .end annotation
.end field

.field private channelLayout:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "channel_layout"
    .end annotation
.end field

.field private channels:I
    .annotation runtime Lm4/b;
        value = "channels"
    .end annotation
.end field

.field private codecLongName:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "codec_long_name"
    .end annotation
.end field

.field private codecName:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "codec_name"
    .end annotation
.end field

.field private codecTag:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "codec_tag"
    .end annotation
.end field

.field private codecTagString:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "codec_tag_string"
    .end annotation
.end field

.field private codecTimeBase:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "codec_time_base"
    .end annotation
.end field

.field private codecType:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "codec_type"
    .end annotation
.end field

.field private disposition:Lib/player/models/DispositionEntity;
    .annotation runtime Lm4/b;
        value = "disposition"
    .end annotation
.end field

.field private dmixMode:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "dmix_mode"
    .end annotation
.end field

.field private index:I
    .annotation runtime Lm4/b;
        value = "index"
    .end annotation
.end field

.field private loroCmixlev:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "loro_cmixlev"
    .end annotation
.end field

.field private loroSurmixlev:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "loro_surmixlev"
    .end annotation
.end field

.field private ltrtCmixlev:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "ltrt_cmixlev"
    .end annotation
.end field

.field private ltrtSurmixlev:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "ltrt_surmixlev"
    .end annotation
.end field

.field private rFrameRate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "r_frame_rate"
    .end annotation
.end field

.field private sampleFmt:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "sample_fmt"
    .end annotation
.end field

.field private sampleRate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "sample_rate"
    .end annotation
.end field

.field private startPts:I
    .annotation runtime Lm4/b;
        value = "start_pts"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "start_time"
    .end annotation
.end field

.field private tags:Lib/player/models/TagsEntity;
    .annotation runtime Lm4/b;
        value = "tags"
    .end annotation
.end field

.field private timeBase:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "time_base"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lib/player/models/TagsEntity;

    invoke-direct {v0}, Lib/player/models/TagsEntity;-><init>()V

    iput-object v0, p0, Lib/player/models/AudioEntity;->tags:Lib/player/models/TagsEntity;

    new-instance v0, Lib/player/models/DispositionEntity;

    invoke-direct {v0}, Lib/player/models/DispositionEntity;-><init>()V

    iput-object v0, p0, Lib/player/models/AudioEntity;->disposition:Lib/player/models/DispositionEntity;

    const-string v0, ""

    iput-object v0, p0, Lib/player/models/AudioEntity;->bitRate:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->startTime:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lib/player/models/AudioEntity;->startPts:I

    iput-object v0, p0, Lib/player/models/AudioEntity;->timeBase:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->avgFrameRate:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->rFrameRate:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->loroSurmixlev:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->loroCmixlev:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->ltrtSurmixlev:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->ltrtCmixlev:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->dmixMode:Ljava/lang/String;

    iput v1, p0, Lib/player/models/AudioEntity;->bitsPerSample:I

    iput-object v0, p0, Lib/player/models/AudioEntity;->channelLayout:Ljava/lang/String;

    iput v1, p0, Lib/player/models/AudioEntity;->channels:I

    iput-object v0, p0, Lib/player/models/AudioEntity;->sampleRate:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->sampleFmt:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->codecTag:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->codecTagString:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->codecTimeBase:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->codecType:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->codecLongName:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/AudioEntity;->codecName:Ljava/lang/String;

    iput v1, p0, Lib/player/models/AudioEntity;->index:I

    return-void
.end method


# virtual methods
.method public getAvgFrameRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->avgFrameRate:Ljava/lang/String;

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->bitRate:Ljava/lang/String;

    return-object v0
.end method

.method public getBitsPerSample()I
    .locals 1

    iget v0, p0, Lib/player/models/AudioEntity;->bitsPerSample:I

    return v0
.end method

.method public getChannelLayout()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->channelLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()I
    .locals 1

    iget v0, p0, Lib/player/models/AudioEntity;->channels:I

    return v0
.end method

.method public getCodecLongName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->codecLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->codecTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecTagString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->codecTagString:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecTimeBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->codecTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->codecType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Lib/player/models/DispositionEntity;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->disposition:Lib/player/models/DispositionEntity;

    return-object v0
.end method

.method public getDmixMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->dmixMode:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lib/player/models/AudioEntity;->index:I

    return v0
.end method

.method public getLoroCmixlev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->loroCmixlev:Ljava/lang/String;

    return-object v0
.end method

.method public getLoroSurmixlev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->loroSurmixlev:Ljava/lang/String;

    return-object v0
.end method

.method public getLtrtCmixlev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->ltrtCmixlev:Ljava/lang/String;

    return-object v0
.end method

.method public getLtrtSurmixlev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->ltrtSurmixlev:Ljava/lang/String;

    return-object v0
.end method

.method public getRFrameRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->rFrameRate:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleFmt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->sampleFmt:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->sampleRate:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPts()I
    .locals 1

    iget v0, p0, Lib/player/models/AudioEntity;->startPts:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Lib/player/models/TagsEntity;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->tags:Lib/player/models/TagsEntity;

    return-object v0
.end method

.method public getTimeBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/AudioEntity;->timeBase:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgFrameRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->avgFrameRate:Ljava/lang/String;

    return-void
.end method

.method public setBitRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->bitRate:Ljava/lang/String;

    return-void
.end method

.method public setBitsPerSample(I)V
    .locals 0

    iput p1, p0, Lib/player/models/AudioEntity;->bitsPerSample:I

    return-void
.end method

.method public setChannelLayout(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->channelLayout:Ljava/lang/String;

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    iput p1, p0, Lib/player/models/AudioEntity;->channels:I

    return-void
.end method

.method public setCodecLongName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->codecLongName:Ljava/lang/String;

    return-void
.end method

.method public setCodecName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->codecName:Ljava/lang/String;

    return-void
.end method

.method public setCodecTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->codecTag:Ljava/lang/String;

    return-void
.end method

.method public setCodecTagString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->codecTagString:Ljava/lang/String;

    return-void
.end method

.method public setCodecTimeBase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->codecTimeBase:Ljava/lang/String;

    return-void
.end method

.method public setCodecType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->codecType:Ljava/lang/String;

    return-void
.end method

.method public setDisposition(Lib/player/models/DispositionEntity;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->disposition:Lib/player/models/DispositionEntity;

    return-void
.end method

.method public setDmixMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->dmixMode:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lib/player/models/AudioEntity;->index:I

    return-void
.end method

.method public setLoroCmixlev(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->loroCmixlev:Ljava/lang/String;

    return-void
.end method

.method public setLoroSurmixlev(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->loroSurmixlev:Ljava/lang/String;

    return-void
.end method

.method public setLtrtCmixlev(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->ltrtCmixlev:Ljava/lang/String;

    return-void
.end method

.method public setLtrtSurmixlev(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->ltrtSurmixlev:Ljava/lang/String;

    return-void
.end method

.method public setRFrameRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->rFrameRate:Ljava/lang/String;

    return-void
.end method

.method public setSampleFmt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->sampleFmt:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->sampleRate:Ljava/lang/String;

    return-void
.end method

.method public setStartPts(I)V
    .locals 0

    iput p1, p0, Lib/player/models/AudioEntity;->startPts:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTags(Lib/player/models/TagsEntity;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->tags:Lib/player/models/TagsEntity;

    return-void
.end method

.method public setTimeBase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/AudioEntity;->timeBase:Ljava/lang/String;

    return-void
.end method
