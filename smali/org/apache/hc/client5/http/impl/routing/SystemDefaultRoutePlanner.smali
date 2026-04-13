.class public Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;
.super Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final proxySelector:Ljava/net/ProxySelector;


# direct methods
.method public constructor <init>(Ljava/net/ProxySelector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;Ljava/net/ProxySelector;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/SchemePortResolver;Ljava/net/ProxySelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/routing/DefaultRoutePlanner;-><init>(Lorg/apache/hc/client5/http/SchemePortResolver;)V

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    return-void
.end method

.method private chooseProxy(Ljava/util/List;)Ljava/net/Proxy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;)",
            "Ljava/net/Proxy;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Proxy;

    sget-object v3, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner$1;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public determineProxy(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 3

    :try_start_0
    new-instance p2, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;->proxySelector:Ljava/net/ProxySelector;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/hc/client5/http/impl/routing/SystemDefaultRoutePlanner;->chooseProxy(Ljava/util/List;)Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p2, v1, :cond_3

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/InetSocketAddress;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    new-instance p2, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-object p2

    :cond_2
    new-instance p2, Lorg/apache/hc/core5/http/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to handle non-Inet proxy address: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    return-object v0

    :catch_0
    move-exception p2

    new-instance v0, Lorg/apache/hc/core5/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot convert host to URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
