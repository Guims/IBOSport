.class public Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# instance fields
.field private final initializer:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

.field private final sslBufferMode:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

.field private final sslContext:Ljavax/net/ssl/SSLContext;

.field private final verifier:Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createSystemDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLContext;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->sslBufferMode:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->initializer:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    iput-object p4, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->verifier:Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/core5/ssl/SSLContexts;->createSystemDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;-><init>(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)V

    return-void
.end method


# virtual methods
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

    iget-object v1, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->sslContext:Ljavax/net/ssl/SSLContext;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->sslBufferMode:Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->initializer:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    invoke-static {p3, v0}, Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;->initialize(Ljava/lang/Object;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;)Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    move-result-object v4

    iget-object p3, p0, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->verifier:Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;

    invoke-static {p3}, Lorg/apache/hc/core5/http2/ssl/ConscryptSupport;->verify(Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;)Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;

    move-result-object v5

    move-object v0, p1

    move-object v2, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    sget-object p4, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {p4, p3}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/hc/core5/http2/ssl/ConscryptClientTlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
