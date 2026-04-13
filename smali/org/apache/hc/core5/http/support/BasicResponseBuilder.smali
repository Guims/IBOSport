.class public Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
.super Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/hc/core5/http/support/AbstractResponseBuilder<",
        "Lorg/apache/hc/core5/http/message/BasicHttpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;-><init>(I)V

    return-void
.end method

.method public static copy(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 2

    const-string v0, "HTTP response"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->digest(Lorg/apache/hc/core5/http/HttpMessage;)V

    return-object v0
.end method

.method public static create(I)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 3

    const/16 v0, 0x257

    const-string v1, "HTTP status code"

    const/16 v2, 0x64

    invoke-static {p0, v2, v0, v1}, Lorg/apache/hc/core5/util/Args;->checkRange(IIILjava/lang/String;)I

    new-instance v0, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    invoke-direct {v0, p0}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->addHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->build()Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/hc/core5/http/message/BasicHttpResponse;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHttpResponse;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->getStatus()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/message/HeaderGroup;->setHeaders([Lorg/apache/hc/core5/http/Header;)V

    return-object v0
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->removeHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->removeHeaders(Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->setHeader(Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->setHeaders([Lorg/apache/hc/core5/http/Header;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/support/BasicResponseBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/BasicResponseBuilder;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BasicResponseBuilder [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractResponseBuilder;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headerGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/support/AbstractMessageBuilder;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
