.class public Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/FileContentDecoder;


# instance fields
.field private final contentLength:J

.field private len:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V

    const-string p1, "Content length"

    invoke-static {p4, p5, p1}, Lorg/apache/hc/core5/util/Args;->notNegative(JLjava/lang/String;)J

    iput-wide p4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "Byte buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->isCompleted()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v2, p1, v0}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->read(Ljava/nio/ByteBuffer;I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->readFromChannel(Ljava/nio/ByteBuffer;I)I

    move-result p1

    :goto_0
    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Premature end of Content-Length delimited message body (expected: %d; received: %d)"

    invoke-direct {p1, v1, v0}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    :cond_4
    iget-boolean v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    return v1

    :cond_5
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[content length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Ljava/nio/channels/FileChannel;JJ)J
    .locals 12

    move-wide/from16 v1, p4

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    return-wide v6

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->isCompleted()Z

    move-result v3

    const-wide/16 v8, -0x1

    if-eqz v3, :cond_1

    return-wide v8

    :cond_1
    iget-wide v3, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    iget-wide v10, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    sub-long/2addr v3, v10

    const-wide/32 v10, 0x7fffffff

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v4}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v4}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual/range {p1 .. p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    int-to-long v5, v3

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    long-to-int v3, v1

    :cond_2
    invoke-interface {v4, p1, v3}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->read(Ljava/nio/channels/WritableByteChannel;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-gtz v4, :cond_5

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    int-to-long v2, v3

    cmp-long v4, p4, v2

    if-gez v4, :cond_4

    move-wide/from16 v4, p4

    :goto_0
    move-object v0, p1

    move-wide v2, p2

    goto :goto_1

    :cond_4
    move-wide v4, v2

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Position past end of file [%d > %d]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-wide v0, v8

    :goto_2
    cmp-long v2, v0, v6

    if-lez v2, :cond_7

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-virtual {v2, v0, v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_7
    :goto_3
    cmp-long v2, v0, v8

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Lorg/apache/hc/core5/http/ConnectionClosedException;

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Premature end of Content-Length delimited message body (expected: %d; received: %d)"

    invoke-direct {v0, v2, v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    :goto_4
    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->len:J

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedDecoder;->contentLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    :cond_a
    return-wide v0
.end method
