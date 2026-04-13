.class public Lorg/apache/hc/core5/http2/config/H2Config$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http2/config/H2Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private compressionEnabled:Z

.field private headerTableSize:I

.field private initialWindowSize:I

.field private maxConcurrentStreams:I

.field private maxFrameSize:I

.field private maxHeaderListSize:I

.field private pushEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->headerTableSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->pushEnabled:Z

    const/16 v1, 0xfa

    iput v1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxConcurrentStreams:I

    const v1, 0xffff

    iput v1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->initialWindowSize:I

    const/high16 v1, 0x10000

    iput v1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxFrameSize:I

    const v1, 0xffffff

    iput v1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxHeaderListSize:I

    iput-boolean v0, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->compressionEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http2/config/H2Config;
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http2/config/H2Config;

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->headerTableSize:I

    iget-boolean v2, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->pushEnabled:Z

    iget v3, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxConcurrentStreams:I

    iget v4, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->initialWindowSize:I

    iget v5, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxFrameSize:I

    iget v6, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxHeaderListSize:I

    iget-boolean v7, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->compressionEnabled:Z

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http2/config/H2Config;-><init>(IZIIIIZ)V

    return-object v0
.end method

.method public setCompressionEnabled(Z)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->compressionEnabled:Z

    return-object p0
.end method

.method public setHeaderTableSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 1

    const-string v0, "Header table size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNegative(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->headerTableSize:I

    return-object p0
.end method

.method public setInitialWindowSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 1

    const-string v0, "Initial window size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->initialWindowSize:I

    return-object p0
.end method

.method public setMaxConcurrentStreams(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 1

    const-string v0, "Max concurrent streams"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxConcurrentStreams:I

    return-object p0
.end method

.method public setMaxFrameSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 3

    const v0, 0xffffff

    const-string v1, "Invalid max frame size"

    const/16 v2, 0x4000

    invoke-static {p1, v2, v0, v1}, Lorg/apache/hc/core5/util/Args;->checkRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxFrameSize:I

    return-object p0
.end method

.method public setMaxHeaderListSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 1

    const-string v0, "Max header list size"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->maxHeaderListSize:I

    return-object p0
.end method

.method public setPushEnabled(Z)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->pushEnabled:Z

    return-object p0
.end method
