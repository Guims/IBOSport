.class abstract Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final cache:[B

.field private cachePosition:I

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(ILjava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string v0, "Output stream"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->outputStream:Ljava/io/OutputStream;

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cache:[B

    return-void
.end method

.method private flushCache(Z)V
    .locals 3

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cache:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->write(Ljava/nio/ByteBuffer;ZLjava/io/OutputStream;)V

    iput v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->flushCache(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->write(Ljava/nio/ByteBuffer;ZLjava/io/OutputStream;)V

    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->flushCache(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->flushCache(Z)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cache:[B

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    array-length p1, v0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->flushCache(Z)V

    :cond_0
    return-void
.end method

.method public abstract write(Ljava/nio/ByteBuffer;ZLjava/io/OutputStream;)V
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cache:[B

    array-length v1, v0

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    sub-int/2addr v1, v2

    if-lt p3, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->flushCache(Z)V

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->write(Ljava/nio/ByteBuffer;ZLjava/io/OutputStream;)V

    return-void

    :cond_0
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/io/FrameOutputStream;->cachePosition:I

    return-void
.end method
