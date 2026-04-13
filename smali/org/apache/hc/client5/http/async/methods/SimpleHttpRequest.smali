.class public final Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
.super Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/async/methods/ConfigurableHttpRequest;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-void
.end method

.method public static copy(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getRequestUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V

    invoke-interface {p0}, Lorg/apache/hc/core5/http/MessageHeaders;->headerIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/Header;

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http/message/HeaderGroup;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setScheme(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V

    return-object v0
.end method

.method public static create(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Lorg/apache/hc/client5/http/async/methods/SimpleBody;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-object v0
.end method

.method public getBodyBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

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

    iget-object v0, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

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

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-void
.end method

.method public setBody(Lorg/apache/hc/client5/http/async/methods/SimpleBody;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-void
.end method

.method public setBody([BLorg/apache/hc/core5/http/ContentType;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/hc/client5/http/async/methods/SimpleBody;->create([BLorg/apache/hc/core5/http/ContentType;)Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/async/methods/SimpleHttpRequest;->body:Lorg/apache/hc/client5/http/async/methods/SimpleBody;

    return-void
.end method
