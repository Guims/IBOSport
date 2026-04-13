.class public interface abstract Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;
.super Ljava/lang/Object;


# virtual methods
.method public upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Lorg/apache/hc/core5/http/HttpHost;

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v0, v0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p2

    invoke-direct {v2, v0, v1, p2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)Z

    if-eqz p5, :cond_0

    invoke-interface {p5, v1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
