.class public interface abstract Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# virtual methods
.method public abstract connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method

.method public connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/http/io/SocketConfig;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    invoke-interface/range {p1 .. p7}, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;->connect(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/net/InetSocketAddress;Lorg/apache/hc/core5/util/TimeValue;Lorg/apache/hc/core5/http/io/SocketConfig;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Ljava/lang/Object;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
    .locals 0

    invoke-interface {p0, p1, p2, p4}, Lorg/apache/hc/client5/http/io/HttpClientConnectionOperator;->upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)V

    return-void
.end method

.method public abstract upgrade(Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;Lorg/apache/hc/core5/http/HttpHost;Lorg/apache/hc/core5/http/protocol/HttpContext;)V
.end method
