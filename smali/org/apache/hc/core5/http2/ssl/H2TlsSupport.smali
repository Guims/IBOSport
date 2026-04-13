.class public final Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;->lambda$enforceRequirements$0(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static enforceRequirements(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;)Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http2/ssl/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/hc/core5/http2/ssl/a;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;I)V

    return-object v0
.end method

.method private static synthetic lambda$enforceRequirements$0(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/http/ssl/TLS;->excludeWeak([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->excludeH2Blacklisted([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;->setEnableRetransmissions(Ljavax/net/ssl/SSLParameters;Z)V

    invoke-static {p0}, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport;->selectApplicationProtocols(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LA2/a;->m(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;->initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    :cond_0
    return-void
.end method

.method public static selectApplicationProtocols(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/hc/core5/http2/HttpVersionPolicy;->NEGOTIATE:Lorg/apache/hc/core5/http2/HttpVersionPolicy;

    :goto_0
    sget-object v0, Lorg/apache/hc/core5/http2/ssl/H2TlsSupport$1;->$SwitchMap$org$apache$hc$core5$http2$HttpVersionPolicy:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object p0, p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    sget-object v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_1_1:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object v0, v0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_2:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object p0, p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->HTTP_1_1:Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;

    iget-object p0, p0, Lorg/apache/hc/core5/http2/ssl/ApplicationProtocol;->id:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setApplicationProtocols(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "ApplicationProtocols"

    const-class v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lorg/apache/hc/core5/util/ReflectionUtils;->callSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnableRetransmissions(Ljavax/net/ssl/SSLParameters;Z)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "EnableRetransmissions"

    invoke-static {p0, v1, v0, p1}, Lorg/apache/hc/core5/util/ReflectionUtils;->callSetter(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
