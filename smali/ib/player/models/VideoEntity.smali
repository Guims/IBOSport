.class public Lib/player/models/VideoEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avgFrameRate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "avg_frame_rate"
    .end annotation
.end field

.field private bitsPerRawSample:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "bits_per_raw_sample"
    .end annotation
.end field

.field private chromaLocation:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "chroma_location"
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

.field private codedHeight:I
    .annotation runtime Lm4/b;
        value = "coded_height"
    .end annotation
.end field

.field private codedWidth:I
    .annotation runtime Lm4/b;
        value = "coded_width"
    .end annotation
.end field

.field private displayAspectRatio:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "display_aspect_ratio"
    .end annotation
.end field

.field private disposition:Lib/player/models/DispositionEntity;
    .annotation runtime Lm4/b;
        value = "disposition"
    .end annotation
.end field

.field private fieldOrder:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "field_order"
    .end annotation
.end field

.field private hasBFrames:I
    .annotation runtime Lm4/b;
        value = "has_b_frames"
    .end annotation
.end field

.field private height:I
    .annotation runtime Lm4/b;
        value = "height"
    .end annotation
.end field

.field private index:I
    .annotation runtime Lm4/b;
        value = "index"
    .end annotation
.end field

.field private isAvc:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "is_avc"
    .end annotation
.end field

.field private level:I
    .annotation runtime Lm4/b;
        value = "level"
    .end annotation
.end field

.field private nalLengthSize:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "nal_length_size"
    .end annotation
.end field

.field private pixFmt:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "pix_fmt"
    .end annotation
.end field

.field private profile:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "profile"
    .end annotation
.end field

.field private rFrameRate:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "r_frame_rate"
    .end annotation
.end field

.field private refs:I
    .annotation runtime Lm4/b;
        value = "refs"
    .end annotation
.end field

.field private sampleAspectRatio:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "sample_aspect_ratio"
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

.field private width:I
    .annotation runtime Lm4/b;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lib/player/models/TagsEntity;

    invoke-direct {v0}, Lib/player/models/TagsEntity;-><init>()V

    iput-object v0, p0, Lib/player/models/VideoEntity;->tags:Lib/player/models/TagsEntity;

    new-instance v0, Lib/player/models/DispositionEntity;

    invoke-direct {v0}, Lib/player/models/DispositionEntity;-><init>()V

    iput-object v0, p0, Lib/player/models/VideoEntity;->disposition:Lib/player/models/DispositionEntity;

    const-string v0, ""

    iput-object v0, p0, Lib/player/models/VideoEntity;->bitsPerRawSample:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->startTime:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lib/player/models/VideoEntity;->startPts:I

    iput-object v0, p0, Lib/player/models/VideoEntity;->timeBase:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->avgFrameRate:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->rFrameRate:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->nalLengthSize:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->isAvc:Ljava/lang/String;

    iput v1, p0, Lib/player/models/VideoEntity;->refs:I

    iput-object v0, p0, Lib/player/models/VideoEntity;->fieldOrder:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->chromaLocation:Ljava/lang/String;

    iput v1, p0, Lib/player/models/VideoEntity;->level:I

    iput-object v0, p0, Lib/player/models/VideoEntity;->pixFmt:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->displayAspectRatio:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->sampleAspectRatio:Ljava/lang/String;

    iput v1, p0, Lib/player/models/VideoEntity;->hasBFrames:I

    iput v1, p0, Lib/player/models/VideoEntity;->codedHeight:I

    iput v1, p0, Lib/player/models/VideoEntity;->codedWidth:I

    iput v1, p0, Lib/player/models/VideoEntity;->height:I

    iput v1, p0, Lib/player/models/VideoEntity;->width:I

    iput-object v0, p0, Lib/player/models/VideoEntity;->codecTag:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->codecTagString:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->codecTimeBase:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->codecType:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->profile:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->codecLongName:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/VideoEntity;->codecName:Ljava/lang/String;

    iput v1, p0, Lib/player/models/VideoEntity;->index:I

    return-void
.end method


# virtual methods
.method public getAvgFrameRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->avgFrameRate:Ljava/lang/String;

    return-object v0
.end method

.method public getBitsPerRawSample()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->bitsPerRawSample:Ljava/lang/String;

    return-object v0
.end method

.method public getChromaLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->chromaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecLongName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->codecLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->codecTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecTagString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->codecTagString:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecTimeBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->codecTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->codecType:Ljava/lang/String;

    return-object v0
.end method

.method public getCodedHeight()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->codedHeight:I

    return v0
.end method

.method public getCodedWidth()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->codedWidth:I

    return v0
.end method

.method public getDisplayAspectRatio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->displayAspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getDisposition()Lib/player/models/DispositionEntity;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->disposition:Lib/player/models/DispositionEntity;

    return-object v0
.end method

.method public getFieldOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->fieldOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getHasBFrames()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->hasBFrames:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->height:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->index:I

    return v0
.end method

.method public getIsAvc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->isAvc:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->level:I

    return v0
.end method

.method public getNalLengthSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->nalLengthSize:Ljava/lang/String;

    return-object v0
.end method

.method public getPixFmt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->pixFmt:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->profile:Ljava/lang/String;

    return-object v0
.end method

.method public getRFrameRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->rFrameRate:Ljava/lang/String;

    return-object v0
.end method

.method public getRefs()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->refs:I

    return v0
.end method

.method public getSampleAspectRatio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->sampleAspectRatio:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPts()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->startPts:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Lib/player/models/TagsEntity;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->tags:Lib/player/models/TagsEntity;

    return-object v0
.end method

.method public getTimeBase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/VideoEntity;->timeBase:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lib/player/models/VideoEntity;->width:I

    return v0
.end method

.method public setAvgFrameRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->avgFrameRate:Ljava/lang/String;

    return-void
.end method

.method public setBitsPerRawSample(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->bitsPerRawSample:Ljava/lang/String;

    return-void
.end method

.method public setChromaLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->chromaLocation:Ljava/lang/String;

    return-void
.end method

.method public setCodecLongName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->codecLongName:Ljava/lang/String;

    return-void
.end method

.method public setCodecName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->codecName:Ljava/lang/String;

    return-void
.end method

.method public setCodecTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->codecTag:Ljava/lang/String;

    return-void
.end method

.method public setCodecTagString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->codecTagString:Ljava/lang/String;

    return-void
.end method

.method public setCodecTimeBase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->codecTimeBase:Ljava/lang/String;

    return-void
.end method

.method public setCodecType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->codecType:Ljava/lang/String;

    return-void
.end method

.method public setCodedHeight(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->codedHeight:I

    return-void
.end method

.method public setCodedWidth(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->codedWidth:I

    return-void
.end method

.method public setDisplayAspectRatio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->displayAspectRatio:Ljava/lang/String;

    return-void
.end method

.method public setDisposition(Lib/player/models/DispositionEntity;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->disposition:Lib/player/models/DispositionEntity;

    return-void
.end method

.method public setFieldOrder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->fieldOrder:Ljava/lang/String;

    return-void
.end method

.method public setHasBFrames(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->hasBFrames:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->height:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->index:I

    return-void
.end method

.method public setIsAvc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->isAvc:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->level:I

    return-void
.end method

.method public setNalLengthSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->nalLengthSize:Ljava/lang/String;

    return-void
.end method

.method public setPixFmt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->pixFmt:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->profile:Ljava/lang/String;

    return-void
.end method

.method public setRFrameRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->rFrameRate:Ljava/lang/String;

    return-void
.end method

.method public setRefs(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->refs:I

    return-void
.end method

.method public setSampleAspectRatio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->sampleAspectRatio:Ljava/lang/String;

    return-void
.end method

.method public setStartPts(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->startPts:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTags(Lib/player/models/TagsEntity;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->tags:Lib/player/models/TagsEntity;

    return-void
.end method

.method public setTimeBase(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/VideoEntity;->timeBase:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lib/player/models/VideoEntity;->width:I

    return-void
.end method
