.class abstract Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final LOG:LO5/a;


# instance fields
.field private final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final sslBufferManagement:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;

.field private final tlsSessionValidator:Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object p2, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->supportedProtocols:[Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object p4, Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;->STATIC:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    :goto_0
    iput-object p4, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->sslBufferManagement:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p5

    :goto_1
    iput-object p5, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    new-instance p1, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;

    sget-object p2, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->LOG:LO5/a;

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;-><init>(LO5/a;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->tlsSessionValidator:Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->lambda$upgrade$1(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->lambda$upgrade$0(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method private synthetic lambda$upgrade$0(Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    instance-of p3, p1, Lorg/apache/hc/client5/http/config/TlsConfig;

    if-eqz p3, :cond_0

    check-cast p1, Lorg/apache/hc/client5/http/config/TlsConfig;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/client5/http/config/TlsConfig;->DEFAULT:Lorg/apache/hc/client5/http/config/TlsConfig;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/TlsConfig;->getHttpVersionPolicy()Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    move-result-object p3

    invoke-virtual {p4}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/TlsConfig;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->supportedProtocols:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->FORCE_HTTP_1:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eq p3, v1, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/http/ssl/TLS;->excludeWeak([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/config/TlsConfig;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object p1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->FORCE_HTTP_2:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-ne p3, p1, :cond_6

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->excludeH2Blacklisted([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    :cond_6
    :goto_2
    sget-object p1, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->FORCE_HTTP_1:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eq p3, p1, :cond_7

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;->setEnableRetransmissions(Ljavax/net/ssl/SSLParameters;Z)V

    :cond_7
    invoke-static {p3}, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;->selectApplicationProtocols(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, v0, p1}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->applyParameters(Ljavax/net/ssl/SSLEngine;Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->initializeEngine(Ljavax/net/ssl/SSLEngine;)V

    sget-object p1, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->LOG:LO5/a;

    invoke-interface {p1}, LO5/a;->c()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p4}, Ljavax/net/ssl/SSLEngine;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string v0, "Enabled protocols: {}"

    invoke-interface {p1, p3, v0}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljavax/net/ssl/SSLEngine;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    const-string p4, "Enabled cipher suites:{}"

    invoke-interface {p1, p3, p4}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "Starting handshake ({})"

    invoke-interface {p1, p2, p3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$upgrade$1(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 1

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)V

    invoke-virtual {p0, p3}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->createTlsDetails(Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object p1

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p2

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    sget-object p3, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object p3, p3, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->isH2Blacklisted(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljavax/net/ssl/SSLHandshakeException;

    const-string p3, "Cipher suite `"

    const-string v0, "` does not provide adequate security for HTTP/2"

    invoke-static {p3, p2, v0}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public abstract applyParameters(Ljavax/net/ssl/SSLEngine;Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V
.end method

.method public abstract createTlsDetails(Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
.end method

.method public initializeEngine(Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    return-void
.end method

.method public upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 8
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

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->sslBufferManagement:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    new-instance v4, Lorg/apache/hc/client5/http/ssl/a;

    invoke-direct {v4, p0, p3, p4}, Lorg/apache/hc/client5/http/ssl/a;-><init>(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)V

    new-instance v5, Lorg/apache/hc/client5/http/ssl/b;

    invoke-direct {v5, p0, p2}, Lorg/apache/hc/client5/http/ssl/b;-><init>(Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    move-object v0, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object p4, p5

    move-object p5, p6

    const/4 p6, 0x0

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method public verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->tlsSessionValidator:Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;

    iget-object v1, p0, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method
