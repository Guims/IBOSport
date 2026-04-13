.class public final Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private dataLen:I

.field private final maxFramePayloadSize:I

.field private final metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

.field private off:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V
    .locals 1

    add-int/lit8 v0, p2, 0x9

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP2 transport metrics"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Maximum payload size"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    iput p3, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->maxFramePayloadSize:I

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    return-void
.end method


# virtual methods
.method public fillBuffer(Ljava/io/InputStream;I)V
    .locals 4

    :goto_0
    iget v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    if-ge v0, p2, :cond_3

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    add-int/2addr v1, v2

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    if-lez p1, :cond_1

    new-instance p1, Lorg/apache/hc/core5/http2/H2CorruptFrameException;

    const-string p2, "Corrupt or incomplete HTTP2 frame"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/H2CorruptFrameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    throw p1

    :cond_2
    iget v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getMetrics()Lorg/apache/hc/core5/http2/H2TransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read(Ljava/io/InputStream;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 9

    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->fillBuffer(Ljava/io/InputStream;I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x4

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    iget v6, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    add-int/lit8 v7, v6, 0x6

    aget-byte v7, v2, v7

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x7

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v6, v6, 0x8

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->maxFramePayloadSize:I

    if-gt v3, v2, :cond_4

    add-int/lit8 v2, v3, 0x9

    invoke-virtual {p0, p1, v2}, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->fillBuffer(Ljava/io/InputStream;I)V

    sget-object p1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PADDED:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/FrameFlag;->getValue()I

    move-result p1

    and-int/2addr p1, v5

    if-lez p1, :cond_2

    const-string p1, "Inconsistent padding"

    if-eqz v3, :cond_1

    iget-object v6, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    iget v7, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    add-int/2addr v7, v0

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v6, v6, 0x1

    if-lt v3, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-lez v3, :cond_3

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->buffer:[B

    iget v6, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    add-int/2addr v6, v0

    invoke-static {p1, v6, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    new-instance v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    invoke-direct {v0, v4, v5, v1, p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    iget p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->off:I

    iget p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->dataLen:I

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->incrementFramesTransferred()V

    return-object v0

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v1, "Frame size exceeds maximum"

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
.end method
