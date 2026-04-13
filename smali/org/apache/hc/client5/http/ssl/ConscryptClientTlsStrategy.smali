.class public Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;
.super Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;->STATIC:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public static getDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;
    .locals 3

    new-instance v0, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;

    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    return-object v0
.end method

.method public static getSystemDefault()Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;
    .locals 6

    new-instance v0, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;

    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createSystemDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getSystemCipherSuits()[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;->STATIC:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    invoke-static {}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/client5/http/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Ljavax/net/ssl/HostnameVerifier;)V

    return-object v0
.end method

.method public static isSupported()Z
    .locals 3

    :try_start_0
    const-string v0, "org.conscrypt.Conscrypt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isAvailable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public applyParameters(Ljavax/net/ssl/SSLEngine;Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    invoke-static {p1, p3}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2, p3}, LA2/a;->m(Ljavax/net/ssl/SSLParameters;[Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    return-void
.end method

.method public createTlsDetails(Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 2

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public bridge synthetic upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super/range {p0 .. p6}, Lorg/apache/hc/client5/http/ssl/AbstractClientTlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)Z

    move-result p1

    return p1
.end method
