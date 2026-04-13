.class public Lorg/apache/hc/client5/http/entity/mime/StringBody;
.super Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;


# instance fields
.field private final content:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    invoke-direct {p0, p2}, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;-><init>(Lorg/apache/hc/core5/http/ContentType;)V

    const-string v0, "Text"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/StringBody;->content:[B

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/StringBody;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->getContentType()Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/mime/StringBody;->content:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "Output stream"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/StringBody;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
