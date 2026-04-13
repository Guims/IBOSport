.class public final Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;->lambda$initialize$0(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static synthetic b(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;->lambda$verify$1(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object p0

    return-object p0
.end method

.method public static initialize(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;)Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http2/ssl/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/hc/core5/http2/ssl/a;-><init>(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;I)V

    return-object v0
.end method

.method private static synthetic lambda$initialize$0(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
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

    invoke-static {p3}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    invoke-static {p3, p0}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, LA2/a;->m(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3}, Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;->initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$verify$1(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;->verify(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {p2}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-static {p2}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static verify(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;
    .locals 2

    new-instance v0, LA3/d;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
