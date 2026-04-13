.class public Lorg/apache/hc/core5/http/impl/nio/IdentityDecoder;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/FileContentDecoder;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2

    const-string v0, "Byte buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->isCompleted()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->readFromChannel(Ljava/nio/ByteBuffer;)I

    move-result p1

    :goto_0
    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    :cond_2
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[identity; completed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->completed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Ljava/nio/channels/FileChannel;JJ)J
    .locals 10

    move-wide v4, p4

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    return-wide v6

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    return-wide v6

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->hasData()Z

    move-result v1

    const-wide/16 v8, -0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->length()I

    move-result v1

    invoke-virtual/range {p1 .. p3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    long-to-int v1, v4

    :cond_2
    invoke-interface {v2, p1, v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->read(Ljava/nio/channels/WritableByteChannel;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-gtz v1, :cond_4

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    move-object v0, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-result-wide v0

    cmp-long v2, p4, v6

    if-lez v2, :cond_6

    cmp-long v2, v0, v6

    if-nez v2, :cond_6

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionInputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->channel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/http/nio/SessionInputBuffer;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Position past end of file ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-wide v0, v8

    :cond_6
    :goto_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_7

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-virtual {v2, v0, v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_7
    :goto_1
    cmp-long v2, v0, v8

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentDecoder;->setCompleted()V

    :cond_8
    return-wide v0
.end method
