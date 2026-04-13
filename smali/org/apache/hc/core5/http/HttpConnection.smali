.class public interface abstract Lorg/apache/hc/core5/http/HttpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/SocketModalCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
.end method

.method public abstract getLocalAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
.end method

.method public abstract getRemoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract getSSLSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract isOpen()Z
.end method
