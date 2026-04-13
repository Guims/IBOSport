.class public Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;
.super Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/FileContentEncoder;


# instance fields
.field private final contentLength:J

.field private final fragHint:I

.field private remaining:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;J)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)V

    const-string p1, "Content length"

    invoke-static {p4, p5, p1}, Lorg/apache/hc/core5/util/Args;->notNegative(JLjava/lang/String;)J

    iput-wide p4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->contentLength:J

    const/4 p1, 0x0

    invoke-static {p6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->fragHint:I

    iput-wide p4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    return-void
.end method

.method private nextChunk(Ljava/nio/ByteBuffer;)I
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[content length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->contentLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->contentLength:J

    iget-wide v3, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; completed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->isCompleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Ljava/nio/channels/FileChannel;JJ)J
    .locals 10

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->assertNotCompleted()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->flushToChannel()I

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;

    invoke-interface {v2}, Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;->hasData()Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->channel:Ljava/nio/channels/WritableByteChannel;

    move-object v4, p1

    move-wide v5, p2

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    iget-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-virtual {p3, p1, p2}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_2
    iget-wide p3, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    sub-long/2addr p3, p1

    iput-wide p3, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    cmp-long p3, p3, v0

    if-gtz p3, :cond_3

    const/4 p3, 0x0

    invoke-super {p0, p3}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->complete(Ljava/util/List;)V

    :cond_3
    return-wide p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->assertNotCompleted()V

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_6

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;->hasData()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->fragHint:I

    if-lez v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->nextChunk(Ljava/nio/ByteBuffer;)I

    move-result v1

    iget v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->fragHint:I

    if-gt v1, v4, :cond_3

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;

    invoke-interface {v5}, Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;->length()I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->writeToBuffer(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;->hasData()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->nextChunk(Ljava/nio/ByteBuffer;)I

    move-result v1

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;

    invoke-interface {v4}, Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;->length()I

    move-result v4

    iget v5, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->fragHint:I

    if-ge v4, v5, :cond_4

    if-lez v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->flushToChannel()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->buffer:Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;->hasData()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->nextChunk(Ljava/nio/ByteBuffer;)I

    move-result v1

    iget v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->fragHint:I

    if-le v1, v4, :cond_1

    invoke-virtual {p0, p1, v1}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->writeToChannel(Ljava/nio/ByteBuffer;I)I

    move-result v1

    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    add-int/2addr v0, v1

    if-nez v1, :cond_1

    :cond_6
    :goto_0
    iget-wide v4, p0, Lorg/apache/hc/core5/http/impl/nio/LengthDelimitedEncoder;->remaining:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractContentEncoder;->complete(Ljava/util/List;)V

    :cond_7
    return v0
.end method
