.class final Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/nio/AsyncClientConnectionOperator;


# instance fields
.field private final schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

.field private final sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

.field private final tlsStrategyLookup:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/config/Lookup;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;",
            ">;",
            "Lorg/apache/hc/client5/http/SchemePortResolver;",
            "Lorg/apache/hc/client5/http/DnsResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLS strategy lookup"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/config/Lookup;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->tlsStrategyLookup:Lorg/apache/hc/core5/http/config/Lookup;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    new-instance p1, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    invoke-direct {p1, p3}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;-><init>(Lorg/apache/hc/client5/http/DnsResolver;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    return-void
.end method


# virtual methods
.method public connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ConnectionInitiator;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;"
        }
    .end annotation

    move-object/from16 v5, p5

    const-string v0, "Connection initiator"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Host"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v7, Lorg/apache/hc/core5/concurrent/ComplexFuture;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Lorg/apache/hc/core5/concurrent/ComplexFuture;-><init>(Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->schemePortResolver:Lorg/apache/hc/client5/http/SchemePortResolver;

    invoke-static {p2, v0}, Lorg/apache/hc/client5/http/routing/RoutingSupport;->normalize(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/SchemePortResolver;)Lorg/apache/hc/core5/http/HttpHost;

    move-result-object v9

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->tlsStrategyLookup:Lorg/apache/hc/core5/http/config/Lookup;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    instance-of v6, v5, Lorg/apache/hc/client5/http/config/TlsConfig;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lorg/apache/hc/client5/http/config/TlsConfig;

    goto :goto_1

    :cond_1
    sget-object v6, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    :goto_1
    iget-object v10, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->sessionRequester:Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v11

    invoke-direct {v4, v0, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_2
    move-object v11, v4

    invoke-virtual {v6}, Lorg/apache/hc/client5/http/config/TlsConfig;->getHttpVersionPolicy()Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    move-result-object v12

    new-instance v0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, v6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$1;-><init>(Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/config/TlsConfig;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/ComplexFuture;)V

    move-object v2, p1

    move-object/from16 v5, p3

    move-object v8, v0

    move-object v0, v7

    move-object v3, v9

    move-object v1, v10

    move-object v4, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v8}, Lorg/apache/hc/client5/http/impl/nio/MultihomeIOSessionRequester;->connect(Lorg/apache/hc/core5/reactor/ConnectionInitiator;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/util/Timeout;Ljava/lang/Object;Lorg/apache/hc/core5/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/concurrent/ComplexFuture;->setDependency(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            "Lorg/apache/hc/core5/http/HttpHost;",
            "Ljava/lang/Object;",
            "Lorg/apache/hc/core5/http/protocol/HttpContext;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;",
            ">;)V"
        }
    .end annotation

    iget-object p4, p0, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;->tlsStrategyLookup:Lorg/apache/hc/core5/http/config/Lookup;

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lorg/apache/hc/core5/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    :goto_0
    move-object v0, p4

    goto :goto_1

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    new-instance v5, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$2;

    invoke-direct {v5, p0, p5, p5, p1}, Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator$2;-><init>(Lorg/apache/hc/client5/http/impl/nio/DefaultAsyncClientConnectionOperator;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/core5/concurrent/FutureCallback;Lorg/apache/hc/client5/http/nio/ManagedAsyncClientConnection;)V

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    :cond_1
    return-void
.end method
