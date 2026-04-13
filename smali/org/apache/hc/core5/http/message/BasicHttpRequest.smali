.class public Lorg/apache/hc/core5/http/message/BasicHttpRequest;
.super Lorg/apache/hc/core5/http/message/HeaderGroup;

# interfaces
.implements Lorg/apache/hc/core5/http/HttpRequest;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private absoluteRequestUri:Z

.field private authority:Lorg/apache/hc/core5/net/URIAuthority;

.field private final method:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private requestUri:Ljava/net/URI;

.field private scheme:Ljava/lang/String;

.field private version:Lorg/apache/hc/core5/http/ProtocolVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setUri(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/net/URIAuthority;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    const-string v0, "Method name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    iput-object p4, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    const-string v0, "Method name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    const-string p1, "Request URI"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setUri(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    const-string v0, "Method name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    if-eqz p2, :cond_1

    new-instance p1, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    iput-object p3, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setUri(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Ljava/net/URI;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    const-string p1, "Request URI"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->setUri(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/hc/core5/http/message/HeaderGroup;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/Method;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    if-eqz p2, :cond_1

    new-instance p1, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;)V

    :cond_1
    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    iput-object p3, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    return-void
.end method

.method private assembleRequestUri(Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v0, v0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getPort()I

    move-result v0

    if-ltz v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/URIAuthority;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    const-string v1, "/"

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Header name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/message/HeaderGroup;->addHeader(Lorg/apache/hc/core5/http/Header;)V

    return-void
.end method

.method public getAuthority()Lorg/apache/hc/core5/net/URIAuthority;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->absoluteRequestUri:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->assembleRequestUri(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->requestUri:Ljava/net/URI;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->assembleRequestUri(Ljava/lang/StringBuilder;)V

    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->requestUri:Ljava/net/URI;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->requestUri:Ljava/net/URI;

    return-object v0
.end method

.method public getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    return-object v0
.end method

.method public setAbsoluteRequestUri(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->absoluteRequestUri:Z

    return-void
.end method

.method public setAuthority(Lorg/apache/hc/core5/net/URIAuthority;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->requestUri:Ljava/net/URI;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "Header name"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/message/BasicHeader;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/message/HeaderGroup;->setHeader(Lorg/apache/hc/core5/http/Header;)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "URI path begins with multiple slashes"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->requestUri:Ljava/net/URI;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->requestUri:Ljava/net/URI;

    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 4

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->scheme:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/net/URIAuthority;

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/hc/core5/net/URIAuthority;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/net/URIAuthority;->create(Ljava/lang/String;)Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->authority:Lorg/apache/hc/core5/net/URIAuthority;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "URI path begins with multiple slashes"

    invoke-static {v2, v3}, Lorg/apache/hc/core5/util/Args;->check(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->path:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Lorg/apache/hc/core5/http/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/message/BasicHttpRequest;->assembleRequestUri(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
