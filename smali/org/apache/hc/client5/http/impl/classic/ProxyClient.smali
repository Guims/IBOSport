.class public Lorg/apache/hc/client5/http/impl/classic/ProxyClient;
.super Ljava/lang/Object;


# instance fields
.field private final authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/config/Lookup<",
            "Lorg/apache/hc/client5/http/auth/AuthSchemeFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

.field private final connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

.field private final proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

.field private final requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

.field private final requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;-><init>(Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/client5/http/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/client5/http/config/RequestConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;-><init>(Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/client5/http/config/RequestConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/io/HttpConnectionFactory;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/client5/http/config/RequestConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
            "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/client5/http/config/RequestConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->builder()Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;->http1Config(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;->charCodingConfig(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;->build()Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lorg/apache/hc/client5/http/config/RequestConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/RequestConfig;

    :goto_1
    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    new-instance p1, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;

    new-instance p2, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;

    invoke-direct {p2}, Lorg/apache/hc/core5/http/protocol/RequestTargetHost;-><init>()V

    new-instance p3, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;

    invoke-direct {p3}, Lorg/apache/hc/client5/http/protocol/RequestClientConnControl;-><init>()V

    new-instance p4, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;

    invoke-direct {p4}, Lorg/apache/hc/core5/http/protocol/RequestUserAgent;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/hc/core5/http/HttpRequestInterceptor;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/protocol/DefaultHttpProcessor;-><init>([Lorg/apache/hc/core5/http/HttpRequestInterceptor;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    new-instance p1, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    new-instance p1, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/DefaultAuthenticationStrategy;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    new-instance p1, Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-direct {p1}, Lorg/apache/hc/client5/http/auth/AuthExchange;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    invoke-static {}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->create()Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    const-string p2, "Basic"

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/BasicSchemeFactory;

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    const-string p2, "Digest"

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/DigestSchemeFactory;

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    const-string p2, "NTLM"

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/auth/NTLMSchemeFactory;

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    const-string p2, "Negotiate"

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/SPNegoSchemeFactory;

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    const-string p2, "Kerberos"

    sget-object p3, Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;->DEFAULT:Lorg/apache/hc/client5/http/impl/auth/KerberosSchemeFactory;

    invoke-virtual {p1, p2, p3}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/hc/core5/http/config/RegistryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/config/RegistryBuilder;->build()Lorg/apache/hc/core5/http/config/Registry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    sget-object p1, Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultClientConnectionReuseStrategy;

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    return-void
.end method


# virtual methods
.method public tunnel(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/Credentials;)Ljava/net/Socket;
    .locals 10

    const-string v0, "Proxy host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target host"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Credentials"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x50

    invoke-direct {v0, v3, v2, v4}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    new-instance v2, Lorg/apache/hc/client5/http/HttpRoute;

    sget-object v5, Lorg/apache/hc/client5/http/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/hc/client5/http/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/hc/client5/http/RouteInfo$LayerType;->PLAIN:Lorg/apache/hc/client5/http/RouteInfo$LayerType;

    move-object v1, v0

    move-object v0, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/HttpRoute;-><init>(Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/hc/core5/http/HttpHost;ZLorg/apache/hc/client5/http/RouteInfo$TunnelType;Lorg/apache/hc/client5/http/RouteInfo$LayerType;)V

    move-object v2, v0

    move-object v0, v1

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->connFactory:Lorg/apache/hc/core5/http/io/HttpConnectionFactory;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Lorg/apache/hc/core5/http/io/HttpConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    new-instance v5, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/hc/core5/http/protocol/BasicHttpContext;-><init>()V

    new-instance v3, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;

    sget-object v4, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, p1, v0}, Lorg/apache/hc/core5/http/message/BasicClassicHttpRequest;-><init>(Lorg/apache/hc/core5/http/Method;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;-><init>()V

    new-instance v4, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-direct {v4, p1}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Lorg/apache/hc/core5/http/HttpHost;)V

    invoke-virtual {v0, v4, p3}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;->setCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V

    const-string v4, "http.request"

    invoke-interface {v5, v4, v3}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "http.route"

    invoke-interface {v5, v4, v2}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http.auth.credentials-provider"

    invoke-interface {v5, v2, v0}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http.authscheme-registry"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->authSchemeRegistry:Lorg/apache/hc/core5/http/config/Lookup;

    invoke-interface {v5, v0, v2}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http.request-config"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->requestConfig:Lorg/apache/hc/client5/http/config/RequestConfig;

    invoke-interface {v5, v0, v2}, Lorg/apache/hc/core5/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    invoke-virtual {v0, v3, v2, v5}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->preProcess(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    :goto_1
    invoke-interface {v9}, Lorg/apache/hc/core5/http/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v0, v2, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v0}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    sget-object v2, Lorg/apache/hc/client5/http/auth/ChallengeType;->PROXY:Lorg/apache/hc/client5/http/auth/ChallengeType;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->addAuthResponse(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    move-object v7, v3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->requestExec:Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;

    invoke-virtual {v0, v7, v9, v5}, Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;->execute(Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/io/HttpClientConnection;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->isChallenged(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->authenticator:Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->proxyAuthStrategy:Lorg/apache/hc/client5/http/AuthenticationStrategy;

    move-object v6, v5

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->proxyAuthExchange:Lorg/apache/hc/client5/http/auth/AuthExchange;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/auth/HttpAuthenticator;->updateAuthState(Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/client5/http/auth/ChallengeType;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/client5/http/AuthenticationStrategy;Lorg/apache/hc/client5/http/auth/AuthExchange;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v0

    move-object v5, v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/classic/ProxyClient;->reuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    invoke-interface {v0, v7, v3, v5}, Lorg/apache/hc/core5/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/hc/core5/http/HttpRequest;Lorg/apache/hc/core5/http/HttpResponse;Lorg/apache/hc/core5/http/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->consume(Lorg/apache/hc/core5/http/HttpEntity;)V

    goto :goto_2

    :cond_2
    invoke-interface {v9}, Lorg/apache/hc/core5/http/HttpConnection;->close()V

    :goto_2
    const-string v0, "Proxy-Authorization"

    invoke-interface {v7, v0}, Lorg/apache/hc/core5/http/HttpMessage;->removeHeaders(Ljava/lang/String;)Z

    move-object v3, v7

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_5

    invoke-interface {v3}, Lorg/apache/hc/core5/http/HttpEntityContainer;->getEntity()Lorg/apache/hc/core5/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/apache/hc/core5/http/io/entity/EntityUtils;->toString(Lorg/apache/hc/core5/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-interface {v9}, Lorg/apache/hc/core5/http/HttpConnection;->close()V

    new-instance v0, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT refused by proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v2, v3}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lorg/apache/hc/client5/http/impl/TunnelRefusedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-interface {v9}, Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Lorg/apache/hc/core5/http/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response to CONNECT request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
