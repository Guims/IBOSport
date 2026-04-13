.class public Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/SessionOutputBuffer;


# static fields
.field private static final CRLF:[B


# instance fields
.field private bbuf:Ljava/nio/ByteBuffer;

.field private final buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final fragmentSizeHint:I

.field private final metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p1, v1}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/charset/CharsetEncoder;)V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    invoke-direct {p0, v0, p1, p1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;-><init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IILjava/nio/charset/CharsetEncoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;IILjava/nio/charset/CharsetEncoder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->positive(ILjava/lang/String;)I

    const-string v0, "HTTP transport metrics"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    new-instance p1, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    if-ltz p3, :cond_0

    move p2, p3

    :cond_0
    iput p2, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->fragmentSizeHint:I

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private flushBuffer(Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->clear()V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_0
    return-void
.end method

.method private handleEncodingResult(Ljava/nio/charset/CoderResult;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->write(ILjava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private writeEncoded(Ljava/nio/CharBuffer;Ljava/io/OutputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->handleEncodingResult(Ljava/nio/charset/CoderResult;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public flush(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flushBuffer(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public getMetrics()Lorg/apache/hc/core5/http/io/HttpTransportMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public write(ILjava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->fragmentSizeHint:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flushBuffer(Ljava/io/OutputStream;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flushBuffer(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BIILjava/io/OutputStream;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Output stream"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->fragmentSizeHint:I

    if-gt p3, v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->capacity()I

    move-result v0

    if-le p3, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_2

    invoke-direct {p0, p4}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flushBuffer(Ljava/io/OutputStream;)V

    :cond_2
    iget-object p4, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append([BII)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p4}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flushBuffer(Ljava/io/OutputStream;)V

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->metrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    return-void
.end method

.method public write([BLjava/io/OutputStream;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->write([BIILjava/io/OutputStream;)V

    return-void
.end method

.method public writeLine(Lorg/apache/hc/core5/util/CharArrayBuffer;Ljava/io/OutputStream;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Output stream"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->encoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v3, p1, v1, v2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(Lorg/apache/hc/core5/util/CharArrayBuffer;II)V

    :cond_1
    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->buffer:Lorg/apache/hc/core5/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->isFull()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->flushBuffer(Ljava/io/OutputStream;)V

    :cond_2
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->writeEncoded(Ljava/nio/CharBuffer;Ljava/io/OutputStream;)V

    :cond_4
    sget-object p1, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->CRLF:[B

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/impl/io/SessionOutputBufferImpl;->write([BLjava/io/OutputStream;)V

    return-void
.end method
