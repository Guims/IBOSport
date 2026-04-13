.class Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpEntity;


# instance fields
.field private final contentLength:J

.field private final contentType:Lorg/apache/hc/core5/http/ContentType;

.field private final multipart:Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;Lorg/apache/hc/core5/http/ContentType;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->multipart:Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;

    iput-object p2, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentType:Lorg/apache/hc/core5/http/ContentType;

    iput-wide p3, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentLength:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x6400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http/ContentTooLongException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content length is too long: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ContentTooLongException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/hc/core5/http/ContentTooLongException;

    const-string v1, "Content length is unknown"

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/ContentTooLongException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultipart()Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->multipart:Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;

    return-object v0
.end method

.method public getTrailerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailers()Lorg/apache/hc/core5/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/hc/core5/function/Supplier<",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 4

    iget-wide v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->isRepeatable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/MultipartFormEntity;->multipart:Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;

    invoke-virtual {v0, p1}, Lorg/apache/hc/client5/http/entity/mime/AbstractMultipartFormat;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
