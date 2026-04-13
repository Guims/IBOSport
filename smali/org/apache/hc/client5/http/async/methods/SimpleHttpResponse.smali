.class public final Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
.super Lorg/apache/hc/core5/http/message/BasicHttpResponse;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static copy(Lorg/apache/hc/core5/http/HttpResponse;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 2

    const-string v0, "HTTP response"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;-><init>(I)V

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpResponse;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-interface {p0}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http/Header;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/message/HeaderGroup;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static create(I)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;-><init>(I)V

    return-object v0
.end method

.method public static create(ILjava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->create(ILjava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static create(ILjava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->setBody(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V

    :cond_0
    return-object v0
.end method

.method public static create(I[B)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/ContentType;->TEXT_PLAIN:Lorg/apache/hc/core5/http/ContentType;

    invoke-static {p0, p1, v0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->create(I[BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static create(I[BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;

    invoke-direct {v0, p0}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->setBody([BLorg/apache/hc/core5/http/ContentType;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBody()Lorg/apache/hc/client5/http/async/methods/SimpleBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-object v0
.end method

.method public getBodyBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getBodyBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lorg/apache/hc/core5/http/ContentType;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->getContentType()Lorg/apache/hc/core5/http/ContentType;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->create(Ljava/lang/String;Lorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-void
.end method

.method public setBody(Lorg/apache/hc/client5/http/async/methods/SimpleBody;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-void
.end method

.method public setBody([BLorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpResponse;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-void
.end method
