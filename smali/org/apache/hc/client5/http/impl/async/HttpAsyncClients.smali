.class public final Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->lambda$createHttp2Minimal$2(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->lambda$createMinimal$1(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->lambda$createMinimal$0(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static createDefault()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->create()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->build()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public static createHttp2Default()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->create()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->build()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public static createHttp2Minimal()Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-static {v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public static createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-static {p0, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/DefaultClientTlsStrategy;->getDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
    .locals 5

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;-><init>()V

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimalProtocolProcessor()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v2

    new-instance v3, Lorg/apache/hc/client5/http/impl/async/d;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lorg/apache/hc/client5/http/impl/async/d;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;I)V

    sget-object v4, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-direct {v1, v2, v3, p0, v4}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientProtocolStarter;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V

    invoke-static {v1, v0, p1, p2, p3}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimalHttp2AsyncClientImpl(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;->INSTANCE:Lorg/apache/hc/client5/http/SystemDefaultDnsResolver;

    invoke-static {p0, p1, v0, p2}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createHttp2Minimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createHttp2System()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->create()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->useSystemProperties()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->build()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public static createMinimal()Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    sget-object v1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-static {v0, v1}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public static createMinimal(Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 4

    sget-object v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    sget-object v1, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    sget-object v2, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    sget-object v3, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-static {v0, v1, v2, v3, p0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimal(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createMinimal(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->create()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->build()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimal(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createMinimal(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimalProtocolProcessor()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v3

    new-instance v4, Lorg/apache/hc/client5/http/impl/async/d;

    const/4 v2, 0x4

    invoke-direct {v4, v1, v2}, Lorg/apache/hc/client5/http/impl/async/d;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;I)V

    sget-object v7, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    sget-object v8, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    move-object v5, p1

    move-object v6, p2

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)V

    sget-object v4, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/apache/hc/client5/http/config/TlsConfig;->custom()Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->setVersionPolicy(Lorg/apache/hc/core5/http2/HttpVersionPolicy;)Lorg/apache/hc/client5/http/config/TlsConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/config/TlsConfig$Builder;->build()Lorg/apache/hc/client5/http/config/TlsConfig;

    move-result-object p0

    :goto_0
    move-object v5, p0

    move-object v2, p3

    move-object v3, p4

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimalHttpAsyncClientImpl(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createMinimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOReactorConfig;->DEFAULT:Lorg/apache/hc/core5/reactor/IOReactorConfig;

    invoke-static {v0, p0, p1, v1}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimal(Lorg/apache/hc/core5/http2/HttpVersionPolicy;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createMinimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->create()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManagerBuilder;->build()Lorg/apache/hc/client5/http/impl/nio/PoolingAsyncClientConnectionManager;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object p0

    return-object p0
.end method

.method public static createMinimal(Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 9

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;

    invoke-direct {v1}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimalProtocolProcessor()Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    move-result-object v3

    new-instance v4, Lorg/apache/hc/client5/http/impl/async/d;

    const/4 v2, 0x3

    invoke-direct {v4, v1, v2}, Lorg/apache/hc/client5/http/impl/async/d;-><init>(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;I)V

    sget-object v7, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    sget-object v8, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    move-object v5, p0

    move-object v6, p1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientProtocolNegotiationStarter;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;)V

    sget-object v4, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;->createMinimalHttpAsyncClientImpl(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    move-result-object p0

    return-object p0
.end method

.method private static createMinimalHttp2AsyncClientImpl(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;
    .locals 8

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;

    new-instance v4, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "httpclient-main"

    const/4 v2, 0x1

    invoke-direct {v4, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "httpclient-dispatch"

    invoke-direct {v5, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/async/MinimalH2AsyncClient;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/DnsResolver;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;)V

    return-object v0
.end method

.method private static createMinimalHttpAsyncClientImpl(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/config/TlsConfig;)Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;
    .locals 9

    new-instance v0, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;

    new-instance v4, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "httpclient-main"

    const/4 v2, 0x1

    invoke-direct {v4, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;

    const-string v1, "httpclient-dispatch"

    invoke-direct {v5, v1, v2}, Lorg/apache/hc/core5/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/impl/async/MinimalHttpAsyncClient;-><init>(Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/reactor/IOReactorConfig;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/ThreadFactory;Lorg/apache/hc/client5/http/nio/AsyncClientConnectionManager;Lorg/apache/hc/client5/http/SchemePortResolver;Lorg/apache/hc/client5/http/config/TlsConfig;)V

    return-object v0
.end method

.method private static createMinimalProtocolProcessor()Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    new-instance v1, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;

    invoke-direct {v1}, Lorg/apache/hc/core5/http2/protocol/H2RequestContent;-><init>()V

    new-instance v2, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;

    invoke-direct {v2}, Lorg/apache/hc/core5/http2/protocol/H2RequestTargetHost;-><init>()V

    new-instance v3, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;

    invoke-direct {v3}, Lorg/apache/hc/core5/http2/protocol/H2RequestConnControl;-><init>()V

    new-instance v4, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    const-string v5, "org.apache.hc.client5"

    const-class v6, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClients;

    const-string v7, "Apache-HttpAsyncClient"

    invoke-static {v7, v5, v6}, Lorg/apache/hc/core5/util/VersionInfo;->getSoftwareInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-direct {v0, v5}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    return-object v0
.end method

.method public static createSystem()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->create()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->useSystemProperties()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->build()Lorg/apache/hc/client5/http/impl/async/CloseableHttpAsyncClient;

    move-result-object v0

    return-object v0
.end method

.method public static custom()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;->create()Lorg/apache/hc/client5/http/impl/async/HttpAsyncClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static customHttp2()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;->create()Lorg/apache/hc/client5/http/impl/async/H2AsyncClientBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$createHttp2Minimal$2(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->get(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createMinimal$0(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->get(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createMinimal$1(Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/async/AsyncPushConsumerRegistry;->get(Lorg/apache/hc/core5/http/HttpRequest;)Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;

    move-result-object p0

    return-object p0
.end method
