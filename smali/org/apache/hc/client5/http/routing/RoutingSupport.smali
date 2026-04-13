.class public final Lorg/apache/hc/client5/http/routing/RoutingSupport;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineHost(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 4

    const-string v0, "URI does not specify a valid host name: "

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getAuthority()Lorg/apache/hc/core5/net/URIAuthority;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v0, p0, v2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/hc/core5/http/ProtocolException;

    const-string v0, "Protocol scheme is not specified"

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :try_start_0
    invoke-interface {p0}, Lorg/apache/hc/core5/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lorg/apache/hc/client5/http/utils/URIUtils;->extractHost(Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    new-instance v2, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-object v1
.end method

.method public static normalize(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    invoke-interface {p1, p0}, Lorg/apache/hc/client5/http/SchemePortResolver;->resolve(Lorg/apache/hc/core5/http/HttpHost;)I

    move-result p1

    if-lez p1, :cond_2

    new-instance v0, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object v0

    :cond_2
    return-object p0
.end method
