.class public Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/routing/HttpRoutePlanner;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;


# direct methods
.method public constructor <init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    return-void
.end method


# virtual methods
.method public determineLocalAddress(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/InetAddress;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public determineProxy(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final determineRoute(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/HttpRoute;
    .locals 3

    if-eqz p1, :cond_3

    invoke-static {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/hc/client5/http/config/RequestConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/config/RequestConfig;->getProxy()Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;->determineProxy(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-static {p1, v1}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->normalize(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/URIScheme;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;->determineLocalAddress(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Z)V

    return-object v0

    :cond_1
    new-instance v2, Lorg/apache/hc/client5/http/HttpRoute;

    invoke-virtual {p0, v0, p2}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;->determineLocalAddress(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v2, p1, p2, v0, v1}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/hc/core5/http/HttpHost;Z)V

    return-object v2

    :cond_2
    new-instance p2, Lorg/apache/hc/core5/http/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unroutable protocol scheme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Lorg/apache/hc/core5/http/ProtocolException;

    const-string p2, "Target host is not specified"

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
