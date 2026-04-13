.class public final Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;
.super Ljava/lang/Object;


# instance fields
.field private volatile buffer:Ljava/nio/ByteBuffer;

.field private volatile maxFramePayloadSize:I

.field private final metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP2 transport metrics"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Maximum payload size"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    iput p2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->maxFramePayloadSize:I

    add-int/lit8 p2, p2, 0x9

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public expand(I)V
    .locals 1

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->maxFramePayloadSize:I

    add-int/lit8 p1, p1, 0x9

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public flush(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    throw p1

    :cond_1
    return-void
.end method

.method public getMetrics()Lorg/apache/hc/core5/http2/H2TransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public write(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/nio/channels/WritableByteChannel;)V
    .locals 4

    const-string v0, "Frame"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget v3, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->maxFramePayloadSize:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Frame size exceeds maximum"

    invoke-static {v2, v3}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    :cond_2
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getType()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    instance-of p1, p2, Ljava/nio/channels/GatheringByteChannel;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object p1, p2

    check-cast p1, Ljava/nio/channels/GatheringByteChannel;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    filled-new-array {v1, v0}, [Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->flush(Ljava/nio/channels/WritableByteChannel;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->incrementFramesTransferred()V

    return-void
.end method
