.class public Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;
.super Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;


# instance fields
.field private final buffer:[B


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/HttpEntity;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;-><init>(Lorg/apache/hc/core5/http/HttpEntity;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/EntityDetails;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http/io/entity/BufferedHttpEntity;->buffer:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/io/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
