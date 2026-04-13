.class public interface abstract Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
.end method

.method public abstract startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;)V
.end method

.method public startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p0 .. p6}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->startTls(Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;)V

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    invoke-interface {p7, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
