.class public abstract Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/entity/mime/ContentBody;


# instance fields
.field private final contentType:Lorg/apache/hc/core5/http/ContentType;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/ContentType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Content type"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->contentType:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->contentType:Lorg/apache/hc/core5/http/ContentType;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->contentType:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->contentType:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/entity/mime/AbstractContentBody;->contentType:Lorg/apache/hc/core5/http/ContentType;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
