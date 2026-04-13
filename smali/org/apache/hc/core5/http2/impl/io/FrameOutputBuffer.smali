.class public final Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final maxFramePayloadSize:I

.field private final metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP2 transport metrics"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Maximum payload size"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    iput p2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->maxFramePayloadSize:I

    add-int/lit16 p2, p2, 0x109

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->buffer:[B

    return-void
.end method


# virtual methods
.method public getMetrics()Lorg/apache/hc/core5/http2/H2TransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    return-object v0
.end method

.method public write(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/io/OutputStream;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getFlags()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    iget v7, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->maxFramePayloadSize:I

    if-gt v6, v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Frame size exceeds maximum"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->buffer:[B

    shr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v7, 0x3

    aput-byte v0, v6, v7

    and-int/lit16 v0, v3, 0xff

    int-to-byte v0, v0

    const/4 v7, 0x4

    aput-byte v0, v6, v7

    const/16 v0, 0x18

    shr-long v7, v1, v0

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v0, v7

    int-to-byte v0, v0

    const/4 v7, 0x5

    aput-byte v0, v6, v7

    const/16 v0, 0x10

    shr-long v7, v1, v0

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x6

    aput-byte v7, v6, v8

    const/16 v7, 0x8

    shr-long v11, v1, v7

    and-long/2addr v11, v9

    long-to-int v8, v11

    int-to-byte v8, v8

    const/4 v11, 0x7

    aput-byte v8, v6, v11

    and-long/2addr v1, v9

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v7

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PADDED:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameFlag;->getValue()I

    move-result v1

    and-int/2addr v1, v3

    const/16 v2, 0x9

    if-lez v1, :cond_4

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->buffer:[B

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    if-eqz p1, :cond_5

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->buffer:[B

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v5

    :cond_5
    move p1, v4

    :goto_3
    if-ge p1, v0, :cond_6

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->buffer:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v2

    add-int/lit8 p1, p1, 0x1

    move v2, v3

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->buffer:[B

    invoke-virtual {p2, p1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->incrementFramesTransferred()V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    int-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    return-void
.end method
