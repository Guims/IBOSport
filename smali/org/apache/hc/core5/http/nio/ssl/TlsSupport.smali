.class public final Lorg/apache/hc/core5/http/nio/ssl/TlsSupport;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/hc/core5/http/nio/ssl/TlsSupport;->lambda$enforceStrongSecurity$0(Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    return-void
.end method

.method public static enforceStrongSecurity(Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;)Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;
    .locals 2

    new-instance v0, LA3/d;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, LA3/d;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$enforceStrongSecurity$0(Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/http/ssl/TLS;->excludeWeak([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/http/ssl/TlsCiphers;->excludeWeak([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;->initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    :cond_0
    return-void
.end method
