.class public interface abstract Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpClientConnection;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract activate()V
.end method

.method public abstract bind(Ljava/net/Socket;)V
.end method

.method public abstract getSSLSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSocket()Ljava/net/Socket;
.end method

.method public abstract passivate()V
.end method
