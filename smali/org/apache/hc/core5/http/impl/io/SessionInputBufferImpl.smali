.class public Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/SessionInputBuffer;


# instance fields
.field private final buffer:[B

.field private bufferLen:I

.field private bufferPos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

.field private final maxLineLen:I

.field private final metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

.field private final minChunkLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    new-instance v1, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    new-instance v1, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    const/4 v5, 0x0

    move v3, p1

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/charset/CharsetDecoder;)V
    .locals 6

    new-instance v1, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    const/4 v4, 0x0

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IIILjava/nio/charset/CharsetDecoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IIILjava/nio/charset/CharsetDecoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP transport metrics"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    new-array p1, p2, [B

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    iput p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x200

    :goto_0
    iput p3, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->maxLineLen:I

    new-instance p1, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private appendDecoded(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/hc/core5/util/CharArrayBuffer;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/hc/core5/util/CharArrayBuffer;)I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    return v1
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/hc/core5/util/CharArrayBuffer;)I
    .locals 1

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    return p1
.end method

.method private lineFromLineBuffer(Lorg/apache/hc/core5/util/CharArrayBuffer;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append(Lorg/apache/hc/core5/util/ByteArrayBuffer;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->appendDecoded(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->clear()V

    return v0
.end method

.method private lineFromReadBuffer(Lorg/apache/hc/core5/util/CharArrayBuffer;I)I
    .locals 3

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    if-le p2, v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    sub-int/2addr p2, v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {p1, v1, v0, p2}, Lorg/apache/hc/core5/util/CharArrayBuffer;->append([BII)V

    return p2

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v1, v0, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->appendDecoded(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    iput v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    return-void
.end method

.method public fillBuffer(Ljava/io/InputStream;)I
    .locals 4

    const-string v0, "Input stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput v2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    iput v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    :cond_1
    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    return p1
.end method

.method public getMetrics()Lorg/apache/hc/core5/http/io/HttpTransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    iget v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 2

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2

    const-string v0, "Input stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->fillBuffer(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public read([BIILjava/io/InputStream;)I
    .locals 2

    const-string v0, "Input stream"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr p4, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    return p3

    :cond_1
    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->minChunkLimit:I

    if-le p3, v0, :cond_3

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long p3, p1

    invoke-virtual {p2, p3, p4}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_2
    return p1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p4}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->fillBuffer(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v1

    :cond_4
    iget p4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr p4, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    return p3
.end method

.method public read([BLjava/io/InputStream;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->read([BIILjava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method public readLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/io/InputStream;)I
    .locals 7

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Input stream"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eqz v1, :cond_9

    iget v4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    :goto_1
    iget v5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    aget-byte v5, v5, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_2
    iget v5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->maxLineLen:I

    if-lez v5, :cond_5

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v5

    if-ltz v4, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    iget v6, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    :goto_3
    add-int/2addr v5, v6

    iget v6, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->maxLineLen:I

    if-ge v5, v6, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http/MessageConstraintException;

    const-string p2, "Maximum line length limit exceeded"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/MessageConstraintException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    if-eq v4, v3, :cond_7

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, v4}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineFromReadBuffer(Lorg/apache/hc/core5/util/CharArrayBuffer;I)I

    move-result p1

    return p1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    iget v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int v3, v4, v1

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v5, v6, v1, v3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append([BII)V

    iput v4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    :goto_5
    move v1, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iget v4, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    sub-int/2addr v2, v4

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->buffer:[B

    invoke-virtual {v5, v6, v4, v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append([BII)V

    iget v2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferLen:I

    iput v2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->bufferPos:I

    :cond_8
    invoke-virtual {p0, p2}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->fillBuffer(Ljava/io/InputStream;)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_5

    :cond_9
    if-ne v2, v3, :cond_a

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineBuffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    return v3

    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/io/SessionInputBufferImpl;->lineFromLineBuffer(Lorg/apache/hc/core5/util/CharArrayBuffer;)I

    move-result p1

    return p1
.end method
