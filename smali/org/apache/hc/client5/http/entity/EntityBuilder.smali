.class public Lorg/apache/hc/client5/http/entity/EntityBuilder;
.super Ljava/lang/Object;


# instance fields
.field private binary:[B

.field private chunked:Z

.field private contentEncoding:Ljava/lang/String;

.field private contentType:Lorg/apache/hc/core5/http/ContentType;

.field private file:Ljava/io/File;

.field private gzipCompressed:Z

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private serializable:Ljava/io/Serializable;

.field private stream:Ljava/io/InputStream;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearContent()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->text:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->binary:[B

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->stream:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->parameters:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->serializable:Ljava/io/Serializable;

    iput-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->file:Ljava/io/File;

    return-void
.end method

.method public static create()Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/EntityBuilder;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;-><init>()V

    return-object v0
.end method

.method private getContentOrDefault(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public build()Lorg/apache/hc/core5/http/HttpEntity;
    .locals 11

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http/io/entity/StringEntity;

    sget-object v2, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_TEXT:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->getContentOrDefault(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->chunked:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/hc/core5/http/io/entity/StringEntity;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->binary:[B

    if-eqz v0, :cond_1

    new-instance v1, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;

    sget-object v2, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->getContentOrDefault(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->chunked:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/hc/core5/http/io/entity/ByteArrayEntity;-><init>([BLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->stream:Ljava/io/InputStream;

    if-eqz v6, :cond_2

    new-instance v5, Lorg/apache/hc/core5/http/io/entity/InputStreamEntity;

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, v0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->getContentOrDefault(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    const-wide/16 v7, -0x1

    invoke-direct/range {v5 .. v10}, Lorg/apache/hc/core5/http/io/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    move-object v1, v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->parameters:Ljava/util/List;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/apache/hc/client5/http/entity/UrlEncodedFormEntity;

    iget-object v2, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Lorg/apache/hc/client5/http/entity/UrlEncodedFormEntity;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->serializable:Ljava/io/Serializable;

    if-eqz v0, :cond_5

    new-instance v1, Lorg/apache/hc/core5/http/io/entity/SerializableEntity;

    sget-object v2, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/hc/core5/http/io/entity/SerializableEntity;-><init>(Ljava/io/Serializable;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->file:Ljava/io/File;

    if-eqz v0, :cond_7

    new-instance v1, Lorg/apache/hc/core5/http/io/entity/FileEntity;

    sget-object v2, Lorg/apache/hc/core5/http/ContentType;->DEFAULT_BINARY:Lorg/apache/hc/core5/http/ContentType;

    invoke-direct {p0, v2}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->getContentOrDefault(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/core5/http/ContentType;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/hc/core5/http/io/entity/FileEntity;-><init>(Ljava/io/File;Lorg/apache/hc/core5/http/ContentType;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->gzipCompressed:Z

    if-eqz v0, :cond_6

    new-instance v0, Lorg/apache/hc/client5/http/entity/GzipCompressingEntity;

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/entity/GzipCompressingEntity;-><init>(Lorg/apache/hc/core5/http/HttpEntity;)V

    return-object v0

    :cond_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No entity set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public chunked()Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->chunked:Z

    return-object p0
.end method

.method public getBinary()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->binary:[B

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->file:Ljava/io/File;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getSerializable()Ljava/io/Serializable;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->serializable:Ljava/io/Serializable;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->text:Ljava/lang/String;

    return-object v0
.end method

.method public gzipCompressed()Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->gzipCompressed:Z

    return-object p0
.end method

.method public isChunked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->chunked:Z

    return v0
.end method

.method public isGzipCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->gzipCompressed:Z

    return v0
.end method

.method public setBinary([B)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->clearContent()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->binary:[B

    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-object p0
.end method

.method public setFile(Ljava/io/File;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->clearContent()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->file:Ljava/io/File;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/NameValuePair;",
            ">;)",
            "Lorg/apache/hc/client5/http/entity/EntityBuilder;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->clearContent()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->parameters:Ljava/util/List;

    return-object p0
.end method

.method public varargs setParameters([Lorg/apache/hc/core5/http/NameValuePair;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->setParameters(Ljava/util/List;)Lorg/apache/hc/client5/http/entity/EntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSerializable(Ljava/io/Serializable;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->clearContent()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->serializable:Ljava/io/Serializable;

    return-object p0
.end method

.method public setStream(Ljava/io/InputStream;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->clearContent()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->stream:Ljava/io/InputStream;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/apache/hc/client5/http/entity/EntityBuilder;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/client5/http/entity/EntityBuilder;->clearContent()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/EntityBuilder;->text:Ljava/lang/String;

    return-object p0
.end method
