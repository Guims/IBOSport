.class public final Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;
    }
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final bytes:[B

.field private flags:I

.field private final maxFramePayloadSize:I

.field private final metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

.field private payloadLen:I

.field private state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

.field private streamId:I

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V
    .locals 1

    add-int/lit8 v0, p2, 0x9

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP2 transport metrics"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Maximum payload size"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    const/16 p1, 0x4000

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->maxFramePayloadSize:I

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->bytes:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object p1, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;->HEAD_EXPECTED:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    return-void
.end method


# virtual methods
.method public getMetrics()Lorg/apache/hc/core5/http2/H2TransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    return-object v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;Ljava/nio/channels/ReadableByteChannel;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 5

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_3
    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$1;->$SwitchMap$org$apache$hc$core5$http2$impl$nio$FrameInputBuffer$State:[I

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_b

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    shr-int/lit8 v3, v0, 0x8

    iput v3, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    iget v4, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->maxFramePayloadSize:I

    if-gt v3, v4, :cond_a

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->type:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->flags:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->streamId:I

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;->PAYLOAD_EXPECTED:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v3, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    if-lt v0, v3, :cond_b

    iget p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->flags:I

    sget-object p2, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PADDED:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/frame/FrameFlag;->getValue()I

    move-result p2

    and-int/2addr p1, p2

    if-lez p1, :cond_8

    iget p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    const-string p2, "Inconsistent padding"

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    add-int/2addr p1, v2

    if-lt v0, p1, :cond_6

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {p1, v0, p2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {p1, v0, p2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    iget p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    if-lez p1, :cond_9

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->bytes:[B

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_9
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p2

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->payloadLen:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sget-object p1, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;->HEAD_EXPECTED:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;->incrementFramesTransferred()V

    new-instance p1, Lorg/apache/hc/core5/http2/frame/RawFrame;

    iget p2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->type:I

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->flags:I

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->streamId:I

    invoke-direct {p1, p2, v0, v2, v1}, Lorg/apache/hc/core5/http2/frame/RawFrame;-><init>(IIILjava/nio/ByteBuffer;)V

    return-object p1

    :cond_a
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Frame size exceeds maximum"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_4
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_d

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->metrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_d
    if-nez v0, :cond_e

    return-object v1

    :cond_e
    if-gez v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    sget-object p2, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;->HEAD_EXPECTED:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    if-ne p1, p2, :cond_10

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    :cond_f
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    throw p1

    :cond_10
    :goto_5
    new-instance p1, Lorg/apache/hc/core5/http2/H2CorruptFrameException;

    const-string p2, "Corrupt or incomplete HTTP2 frame"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/H2CorruptFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/nio/channels/ReadableByteChannel;)Lorg/apache/hc/core5/http2/frame/RawFrame;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->read(Ljava/nio/ByteBuffer;Ljava/nio/channels/ReadableByteChannel;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;->HEAD_EXPECTED:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->state:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer$State;

    return-void
.end method
