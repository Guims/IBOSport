.class public abstract Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ContentDecoder;


# instance fields
.field final buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

.field final channel:Ljava/nio/channels/ReadableByteChannel;

.field protected completed:Z

.field final metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Channel"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Session input buffer"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Transport metrics"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    return-void
.end method


# virtual methods
.method public buffer()Lorg/apache/hc/core5/http/nio/SessionInputBuffer;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    return-object v0
.end method

.method public channel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    return-object v0
.end method

.method public fillBufferFromChannel()I
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_0
    return v0
.end method

.method public getTrailers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    return v0
.end method

.method public metrics()Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    return-object v0
.end method

.method public readFromChannel(Ljava/nio/ByteBuffer;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_0
    return p1
.end method

.method public readFromChannel(Ljava/nio/ByteBuffer;I)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int p2, v0, v1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p2, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p2, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    :goto_0
    if-lez p2, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_1
    return p2
.end method

.method public setCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    return-void
.end method

.method public setCompleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    return-void
.end method
